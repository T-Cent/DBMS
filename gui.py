import dearpygui.dearpygui as dpg # type: ignore
import psycopg2 # type: ignore
import re
from datetime import datetime

# Initialize DearPyGUI
dpg.create_context()

# Set theme and global styling
with dpg.theme() as global_theme:
    with dpg.theme_component(dpg.mvAll):
        dpg.add_theme_color(dpg.mvThemeCol_FrameBg, [30, 30, 40], category=dpg.mvThemeCat_Core)
        dpg.add_theme_color(dpg.mvThemeCol_Button, [70, 70, 140], category=dpg.mvThemeCat_Core)
        dpg.add_theme_color(dpg.mvThemeCol_ButtonHovered, [100, 100, 180], category=dpg.mvThemeCat_Core)
        dpg.add_theme_color(dpg.mvThemeCol_HeaderHovered, [80, 100, 160], category=dpg.mvThemeCat_Core)
        dpg.add_theme_color(dpg.mvThemeCol_TableHeaderBg, [50, 50, 90], category=dpg.mvThemeCat_Core)
        dpg.add_theme_style(dpg.mvStyleVar_FrameRounding, 3, category=dpg.mvThemeCat_Core)
        dpg.add_theme_style(dpg.mvStyleVar_FramePadding, 6, 4, category=dpg.mvThemeCat_Core)

# Apply theme
dpg.bind_theme(global_theme)

# Create viewport with larger dimensions
dpg.create_viewport(title="Nebula Core Database Explorer", width=1200, height=800)
dpg.setup_dearpygui()

# App state variables
username = ""
password = ""
conn = None
query_history = []
database_tables = [
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

# Function to sanitize SQL clauses to prevent SQL injection
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

# Login callback function
def login_button_callback():
    entered_username = dpg.get_value("username_input")
    entered_password = dpg.get_value("password_input")
    
    # Show loading indicator
    dpg.configure_item("login_status", default_value="Connecting to database...", color=[150, 150, 255])
    
    global conn, username
    try:
        conn = psycopg2.connect(f"dbname='Nebula Core' user={entered_username} password={entered_password}")
        username = entered_username
        dpg.set_value("user_welcome", f"Welcome, {entered_username}")
        dpg.hide_item("login_window")
        dpg.show_item("main_window")
        
        # Initialize table stats when connected
        refresh_table_stats()
        
    except psycopg2.OperationalError as e:
        dpg.configure_item("login_status", default_value=f"Login failed: {e}", color=[255, 100, 100])

# Run SQL query function
def run_query():
    # Gather all query components
    select_query = sanitize(dpg.get_value("query_select_input"))
    from_query = sanitize(dpg.get_value("query_from_input"))
    where_query = sanitize(dpg.get_value("query_where_input"))
    order_query = sanitize(dpg.get_value("query_order_input"))
    group_query = sanitize(dpg.get_value("query_group_input"))
    limit_query = sanitize(dpg.get_value("query_limit_input"))
    join_query = sanitize(dpg.get_value("query_join_input"))
    on_query = sanitize(dpg.get_value("query_on_input"))
    
    # Clear previous results
    if dpg.does_item_exist("results_table"):
        dpg.delete_item("results_table")
        
    dpg.configure_item("query_status", default_value="Executing query...", color=[150, 150, 255])

    # Build the query
    query = f"SELECT {select_query} FROM {from_query}"
    
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
    
    # Add to query history
    timestamp = datetime.now().strftime("%H:%M:%S")
    query_history.append(f"[{timestamp}] {query}")
    update_history_display()
    
    # Set the raw query display
    dpg.set_value("raw_query_display", query)
    
    try:
        with conn.cursor() as cur:
            # Rollback any failed transactions first
            conn.rollback()
            
            # Record start time
            start_time = datetime.now()
            
            # Execute query
            cur.execute(query)
            
            # Fetch results
            headers = [desc[0] for desc in cur.description]
            rows = cur.fetchall()
            
            # Calculate execution time
            execution_time = (datetime.now() - start_time).total_seconds()
            
            # Create a table for the results with styling
            with dpg.table(tag="results_table", header_row=True, policy=dpg.mvTable_SizingStretchProp,
                        borders_innerH=True, borders_outerH=True, borders_innerV=True,
                        borders_outerV=True, parent="results_container", height=-1):
                
                # Add columns with adjusted width based on content
                for header in headers:
                    dpg.add_table_column(label=header)
                
                # Add rows with alternating background colors
                for row_idx, row_data in enumerate(rows):
                    with dpg.table_row():
                        for cell in row_data:
                            # Convert all values to string for display
                            cell_text = str(cell) if cell is not None else "NULL"
                            # Add text with color based on data type
                            if isinstance(cell, (int, float)):
                                dpg.add_text(cell_text, color=[200, 230, 255])
                            elif cell is None:
                                dpg.add_text(cell_text, color=[150, 150, 150])
                            else:
                                dpg.add_text(cell_text)
                
            # Update status with success message
            dpg.configure_item("query_status", 
                            default_value=f"Query executed successfully in {execution_time:.3f}s • {len(rows)} rows returned", 
                            color=[100, 255, 100])
            
    except Exception as e:
        conn.rollback()
        dpg.configure_item("query_status", 
                         default_value=f"Error executing query: {e}", 
                         color=[255, 100, 100])
        
        # Create an empty table to maintain layout
        with dpg.table(tag="results_table", header_row=True, parent="results_container", height=100):
            dpg.add_table_column(label="Error")
            with dpg.table_row():
                dpg.add_text(f"Error: {e}", color=[255, 100, 100])

# Update the history display in the sidebar
def update_history_display():
    if dpg.does_item_exist("history_list"):
        dpg.delete_item("history_list", children_only=True)
        
    # Display last 10 queries in reverse order (newest first)
    for query in reversed(query_history[-10:]):
        with dpg.group(parent="history_list"):
            dpg.add_text(query, wrap=300)
            dpg.add_separator()

# Refresh table statistics
def refresh_table_stats():
    if not conn:
        return
        
    try:
        # Clear previous stats
        if dpg.does_item_exist("table_stats_container"):
            dpg.delete_item("table_stats_container", children_only=True)
            
        with conn.cursor() as cur:
            conn.rollback()
            
            for table in database_tables:
                cur.execute(f"SELECT COUNT(*) FROM {table}")
                count = cur.fetchone()[0]
                
                with dpg.group(parent="table_stats_container", horizontal=True):
                    dpg.add_text(f"{table}:", color=[180, 180, 220])
                    dpg.add_text(f"{count} rows", color=[150, 255, 150])
                    
    except Exception as e:
        conn.rollback()
        dpg.add_text(f"Error fetching table stats: {e}", 
                    color=[255, 100, 100], 
                    parent="table_stats_container")

# Quick query templates
def load_query_template(sender, app_data, user_data):
    template_queries = {
        "exoplanet_count": {
            "select": "count(*)",
            "from": "exoplanets",
            "where": "",
            "join": "",
            "on": "",
            "group": "",
            "order": "",
            "limit": ""
        },
        "largest_stars": {
            "select": "name, radius, mass, distance, constellation",
            "from": "stars",
            "where": "radius > 50",
            "join": "",
            "on": "",
            "group": "",
            "order": "radius DESC",
            "limit": "10"
        },
        "spacecraft_by_agency": {
            "select": "spacecraft.name, launch_date, mission_type, space_agency.name as agency",
            "from": "spacecraft",
            "where": "",
            "join": "space_agency",
            "on": "spacecraft.agency_id = space_agency.id",
            "group": "",
            "order": "space_agency.name",
            "limit": ""
        }
    }
    
    query = template_queries.get(user_data)
    if query:
        dpg.set_value("query_select_input", query["select"])
        dpg.set_value("query_from_input", query["from"])
        dpg.set_value("query_where_input", query["where"])
        dpg.set_value("query_join_input", query["join"])
        dpg.set_value("query_on_input", query["on"])
        dpg.set_value("query_group_input", query["group"])
        dpg.set_value("query_order_input", query["order"])
        dpg.set_value("query_limit_input", query["limit"])

# Create login window with improved styling
with dpg.window(tag="login_window", label="Nebula Core Login", width=500, height=350, no_close=True, pos=[350, 200]):
    with dpg.group(horizontal=True):
        # Logo/branding area
        with dpg.child_window(width=150, height=300, border=False):
            dpg.add_spacer(height=40)
            dpg.add_text("NEBULA", color=[100, 150, 255])
            dpg.add_text("CORE", color=[170, 200, 255])
            dpg.add_text("DATABASE", color=[100, 150, 255])
            dpg.add_separator()
            dpg.add_spacer(height=10)
            dpg.add_text("Astronomical", color=[150, 150, 200])
            dpg.add_text("Data Explorer", color=[150, 150, 200])
            dpg.add_spacer(height=30)
            dpg.add_text("v1.0.0", color=[100, 100, 150])
        
        # Login form
        with dpg.group():
            dpg.add_spacer(height=30)
            dpg.add_text("Please log in to access the database", color=[200, 200, 255])
            dpg.add_spacer(height=20)
            
            dpg.add_text("Username:")
            dpg.add_input_text(tag="username_input", width=280, hint="postgres")
            dpg.add_spacer(height=10)
            
            dpg.add_text("Password:")
            dpg.add_input_text(tag="password_input", password=True, width=280)
            dpg.add_spacer(height=20)
            
            with dpg.group(horizontal=True):
                dpg.add_button(label="Connect", callback=login_button_callback, width=120, height=30)
                dpg.add_button(label="Exit", callback=lambda: dpg.stop_dearpygui(), width=120, height=30)
            
            dpg.add_spacer(height=10)
            dpg.add_text("", tag="login_status", color=[0, 0, 0])

# Create main application window with sidebar layout
with dpg.window(tag="main_window", label="Nebula Core Database Explorer", width=1200, height=800, 
               show=False, no_close=True, no_collapse=True, no_resize=True):
    
    # Top bar with user info and controls
    with dpg.group(horizontal=True):
        dpg.add_text("", tag="user_welcome", color=[150, 200, 255])
        dpg.add_spacer(width=20)
        dpg.add_button(label="Refresh Stats", callback=refresh_table_stats, height=23)
        
        dpg.add_spacer(width=750)
        dpg.add_button(label="Log Out", callback=lambda: [dpg.hide_item("main_window"), dpg.show_item("login_window")], height=23)
    
    dpg.add_separator()
    
    # Main content with sidebar layout
    with dpg.group(horizontal=True):
        # Sidebar for database info and history
        with dpg.child_window(width=300, height=-1, border=True):
            with dpg.collapsing_header(label="Database Tables", default_open=True):
                with dpg.child_window(tag="table_stats_container", height=250, border=False):
                    dpg.add_text("Loading table statistics...")
            
            with dpg.collapsing_header(label="Query Templates", default_open=True):
                dpg.add_button(label="Count All Exoplanets", callback=load_query_template, user_data="exoplanet_count", width=-1)
                dpg.add_button(label="Top 10 Largest Stars", callback=load_query_template, user_data="largest_stars", width=-1)
                dpg.add_button(label="Spacecraft By Agency", callback=load_query_template, user_data="spacecraft_by_agency", width=-1)
            
            with dpg.collapsing_header(label="Query History", default_open=True):
                with dpg.child_window(tag="history_list", height=200):
                    dpg.add_text("No queries executed yet")
        
        # Main query builder and results area
        with dpg.child_window(width=-1, height=-1, border=True):
            # Query Builder section
            with dpg.collapsing_header(label="Query Builder", default_open=True):
                with dpg.group():
                    # First row
                    with dpg.group(horizontal=True):
                        with dpg.group():
                            dpg.add_text("SELECT")
                            dpg.add_input_text(tag="query_select_input", width=350, default_value="*")
                        
                        with dpg.group():
                            dpg.add_text("FROM")
                            dpg.add_combo(tag="query_from_input", items=database_tables, width=350, default_value=database_tables[0])
                    
                    # Second row
                    with dpg.group(horizontal=True):
                        with dpg.group():
                            dpg.add_text("JOIN")
                            dpg.add_combo(tag="query_join_input", items=database_tables, width=350)
                        
                        with dpg.group():
                            dpg.add_text("ON")
                            dpg.add_input_text(tag="query_on_input", width=350)
                    
                    # Third row
                    with dpg.group(horizontal=True):
                        with dpg.group():
                            dpg.add_text("WHERE")
                            dpg.add_input_text(tag="query_where_input", width=350)
                        
                        with dpg.group():
                            dpg.add_text("GROUP BY")
                            dpg.add_input_text(tag="query_group_input", width=350)
                    
                    # Fourth row
                    with dpg.group(horizontal=True):
                        with dpg.group():
                            dpg.add_text("ORDER BY")
                            dpg.add_input_text(tag="query_order_input", width=350)
                        
                        with dpg.group():
                            dpg.add_text("LIMIT")
                            dpg.add_input_text(tag="query_limit_input", width=350)
                    
                    dpg.add_spacer(height=10)
                    
                    # Query execution controls
                    with dpg.group(horizontal=True):
                        dpg.add_button(label="Execute Query", callback=run_query, width=150, height=30)
                        dpg.add_spacer(width=20)
                        dpg.add_button(label="Clear Form", callback=lambda: [
                            dpg.set_value("query_select_input", "*"),
                            dpg.set_value("query_where_input", ""),
                            dpg.set_value("query_join_input", ""),
                            dpg.set_value("query_on_input", ""),
                            dpg.set_value("query_group_input", ""),
                            dpg.set_value("query_order_input", ""),
                            dpg.set_value("query_limit_input", "")
                        ], width=150, height=30)
            
            # Raw query display
            with dpg.collapsing_header(label="Generated SQL", default_open=True):
                dpg.add_input_text(tag="raw_query_display", multiline=True, width=-1, height=60, readonly=True)
            
            # Results section
            with dpg.collapsing_header(label="Query Results", default_open=True):
                # Status bar
                dpg.add_text("No query executed yet", tag="query_status")
                dpg.add_separator()
                
                # Results container
                with dpg.child_window(tag="results_container", width=-1, height=-1, horizontal_scrollbar=True):
                    # Table will be created here when query is run
                    dpg.add_text("Execute a query to see results")

# Set up the viewport and show the window
dpg.set_primary_window("login_window", True)
dpg.show_viewport()
dpg.start_dearpygui()
dpg.destroy_context()