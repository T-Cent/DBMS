import dearpygui.dearpygui as dpg # type: ignore
import psycopg2 # type: ignore
import re

# Initialize DearPyGUI
dpg.create_context()
dpg.create_viewport(title="Nebula Core", width=600, height=400)
dpg.setup_dearpygui()

# Variables to store username and password
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

def sanitize(clause):
    """Basic sanitization for WHERE clauses."""
    if not clause:
        return ""
        
    # Check for typical SQL injection patterns
    suspicious_patterns = [
        r';\s*', r'--', r'/\*', r'\*/', r'DROP\s+', r'DELETE\s+',
        r'UPDATE\s+', r'INSERT\s+', r'ALTER\s+', r'UNION\s+'
    ]
    
    for pattern in suspicious_patterns:
        if re.search(pattern, clause, re.IGNORECASE):
            raise ValueError("Potentially malicious clause detected")
    
    return clause

# Callback function for login button
def login_button_callback():
    entered_username = dpg.get_value("username_input")
    entered_password = dpg.get_value("password_input")
    
    # In a real application, you would validate credentials here
    dpg.hide_item("login_window")
    dpg.show_item("main_window")
    
    global conn
    try:
        conn = psycopg2.connect(f"dbname='Nebula Core' user={entered_username} password={entered_password}")
        dpg.set_value("welcome_text", f"Welcome, {entered_username}!")
    except psycopg2.OperationalError as e:
        dpg.set_value("welcome_text", f"Login failed: {e}")
        dpg.show_item("login_window")
        dpg.hide_item("main_window")
        return
    
def run_query():
    select_query = sanitize(dpg.get_value("query_select_input"))
    from_query = sanitize(dpg.get_value("query_from_input"))
    where_query = sanitize(dpg.get_value("query_where_input"))
    
    # Clear previous results
    dpg.delete_item("query_results", children_only=True)
    
    if where_query:
        query = f"SELECT {select_query} FROM {from_query} WHERE {where_query};"
    else:   
        query = f"SELECT {select_query} FROM {from_query};"
    
    try:
        with conn.cursor() as cur:
            cur.execute(query)
            headers = [desc[0] for desc in cur.description]
            
            # Add headers
            header_row = "| "
            for header in headers:
                header_row += f"{header} | "
            dpg.add_text(header_row, parent="query_results")
            
            # Add separator
            separator = "-" * len(header_row)
            dpg.add_text(separator, parent="query_results")
            
            # Add rows
            row_count = 0
            for record in cur:
                row = "| "
                for value in record:
                    row += f"{value} | "
                dpg.add_text(row, parent="query_results")
                row_count += 1
            
            # Add summary
            dpg.add_text(f"\n{row_count} rows returned", parent="query_results")
            
    except Exception as e:
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
    dpg.add_spacer(height=20)
    dpg.add_text("Logged in and connected to Nebula Core!")
    dpg.add_spacer(height=20)
    
    # Query builder
    with dpg.group(horizontal=False):
        dpg.add_text("BUILD YOUR QUERY")
        dpg.add_separator()
        
        dpg.add_text("SELECT:")
        dpg.add_input_text(tag="query_select_input", width=400, default_value="*")
        dpg.add_spacer(height=10)
        
        dpg.add_text("FROM:")
        dpg.add_combo(tag="query_from_input", items=items, width=400, default_value=items[0])
        dpg.add_spacer(height=10)
        
        dpg.add_text("WHERE:")
        dpg.add_input_text(tag="query_where_input", width=400, default_value="")
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

dpg.show_viewport()
dpg.set_primary_window("login_window", True)
dpg.start_dearpygui()
dpg.destroy_context()