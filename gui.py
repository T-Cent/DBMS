import dearpygui.dearpygui as dpg # type: ignore
import psycopg2 # type: ignore
import re

dpg.create_context()
dpg.create_viewport(title="Nebula Core", width=600, height=400)
dpg.setup_dearpygui()

username = ""
password = ""
items = [
    "asteroids",
    "astronauts",          
    "astronomers",         
    "exoplanets",        
    "launch_sites",      
    "observations",  
    "satellite_operator",
    "satellites",        
    "space_agency",      
    "spacecraft",        
    "stars",             
    "telescopes",        
    "tracking_stations", 
]
conn = None

#? Function to sanitize SQL clauses to prevent SQL injection
def sanitize(clause):
    if not clause:
        return ""
        
    suspicious_patterns = [
        r';\s*', r'--', r'/\*', r'\*/', r'DROP\s+', r'DELETE\s+',
        r'UPDATE\s+', r'INSERT\s+', r'ALTER\s+', r'UNION\s+'
    ]
    
    for pattern in suspicious_patterns:
        if re.search(pattern, clause, re.IGNORECASE):
            raise ValueError("Potentially malicious clause detected")
    
    return clause

#? Log in as user postgres to access Nebula Core, psycopg2 will throw an error if the connection fails
def login_button_callback():
    entered_username = dpg.get_value("username_input")
    entered_password = dpg.get_value("password_input")
    
    dpg.hide_item("login_window")
    dpg.show_item("main_window")
    
    global conn
    try:
        conn = psycopg2.connect(f"dbname='Nebula Core' user={entered_username} password={entered_password}")
        # dpg.set_value("welcome_text", f"Welcome, {entered_username}!")
    except psycopg2.OperationalError as e:
        dpg.set_value("welcome_text", f"Login failed: {e}")
        dpg.show_item("login_window")
        dpg.hide_item("main_window")
        return
    
def run_query():
    select_query = sanitize(dpg.get_value("query_select_input"))
    from_query = sanitize(dpg.get_value("query_from_input"))
    where_query = sanitize(dpg.get_value("query_where_input"))
    order_query = sanitize(dpg.get_value("query_order_input"))
    group_query = sanitize(dpg.get_value("query_group_input"))
    limit_query = sanitize(dpg.get_value("query_limit_input"))
    join_query = sanitize(dpg.get_value("query_join_input"))
    on_query = sanitize(dpg.get_value("query_on_input"))
    
    # Clear previous results
    dpg.delete_item("query_results", children_only=True)

    query = rf"SELECT {select_query} FROM {from_query}"
    
    if join_query:  
        query += f" JOIN {join_query}"
    if on_query:    
        query += f" ON {on_query}"
    if where_query:
        query += f" WHERE {where_query}"
    if group_query:
        query += f" GROUP BY {group_query}"
    if order_query:
        query += f" ORDER BY {order_query}"  
    if limit_query:
        query += f" LIMIT {limit_query}"
        
    query += ";"
    
    try:
        with conn.cursor() as cur:
            conn.rollback()
            cur.execute(query)
            headers = [desc[0] for desc in cur.description]
            rows = cur.fetchall()
            
            # Create a table for the results
            with dpg.table(tag="results_table", header_row=True, policy=dpg.mvTable_SizingStretchProp,
                          borders_innerH=True, borders_outerH=True, borders_innerV=True,
                          borders_outerV=True, parent="query_results", height=300):
                
                # Add columns
                for header in headers:
                    dpg.add_table_column(label=header)
                
                # Add rows
                for row_data in rows:
                    with dpg.table_row():
                        for cell in row_data:
                            # Convert all values to string for display
                            dpg.add_text(str(cell) if cell is not None else "NULL")
                
            dpg.set_value("query_status", f"Query executed successfully. {len(rows)} rows returned.")
            
            
    except Exception as e:
        conn.rollback()
        dpg.add_text(f"Error executing query: {e}", color=[255, 0, 0], parent="query_results")
    
# Create login window
with dpg.window(tag="login_window", label="Login", width=600, height=400, no_close=True):
    dpg.add_text("Please log in to continue")
    dpg.add_spacer(height=20)
    
    # Username input
    dpg.add_text("Username:")
    dpg.add_input_text(tag="username_input", width=250)
    
    # Password input
    dpg.add_text("Password:")
    dpg.add_input_text(tag="password_input", password=True, width=250)
    
    dpg.add_spacer(height=20)
    
    # Login button
    dpg.add_button(label="Login", callback=login_button_callback, width=100)

# Create main window (initially hidden) with scrollbars
with dpg.window(tag="main_window", label="Main Application", width=600, height=400, show=False, no_close=True, horizontal_scrollbar=True):
    dpg.add_text("", tag="welcome_text")
    # dpg.add_spacer(height=20)
    dpg.add_text("Logged in and connected to Nebula Core!")
    dpg.add_spacer(height=20)
    
    # Query builder
    with dpg.group(horizontal=False):
        # dpg.add_text("BUILD YOUR QUERY")
        # dpg.add_separator()
        
        dpg.add_text("SELECT:")
        dpg.add_input_text(tag="query_select_input", width=400, default_value="*")
        dpg.add_spacer(height=10)
        
        dpg.add_text("FROM:")
        dpg.add_combo(tag="query_from_input", items=items, width=400, default_value=items[0])
        dpg.add_spacer(height=10)
        
        dpg.add_text("WHERE:")
        dpg.add_input_text(tag="query_where_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_text("ORDER BY:")
        dpg.add_input_text(tag="query_order_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_text("GROUP BY:")
        dpg.add_input_text(tag="query_group_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_text("LIMIT:")
        dpg.add_input_text(tag="query_limit_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_text("JOIN:")
        dpg.add_input_text(tag="query_join_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_text("ON:")
        dpg.add_input_text(tag="query_on_input", width=400, default_value="")
        dpg.add_spacer(height=10)
        
        dpg.add_button(label="Run Query", callback=run_query, width=100)
        dpg.add_spacer(height=10)
        dpg.add_button(label="Log Out", callback=lambda: [dpg.hide_item("main_window"), dpg.show_item("login_window")], width=100)

    dpg.add_spacer(height=20)
    dpg.add_separator()
    
    # Query results section
    dpg.add_text("QUERY RESULTS")
    with dpg.child_window(tag="query_results", width=-1, height=200, horizontal_scrollbar=True):
        # Results will be populated here when query runs
        dpg.add_text("Run a query to see results")
        dpg.add_text(tag="query_status")
        
        

dpg.show_viewport()
dpg.set_primary_window("login_window", True)
dpg.start_dearpygui()
dpg.destroy_context()