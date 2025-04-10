import dearpygui.dearpygui as dpg
import psycopg2

# Initialize DearPyGUI
dpg.create_context()
dpg.create_viewport(title="Login Application", width=600, height=400)
dpg.setup_dearpygui()

# Variables to store username and password
username = ""
password = ""
conn = None

# Callback function for login button
def login_button_callback():
    entered_username = dpg.get_value("username_input")
    entered_password = dpg.get_value("password_input")
    
    # In a real application, you would validate credentials here
    dpg.hide_item("login_window")
    dpg.show_item("main_window")
    dpg.set_value("welcome_text", f"Welcome, {entered_username}!")
    global conn  # Reset connection to avoid reuse
    try:
        conn = psycopg2.connect(f"dbname='Nebula Core' user={entered_username} password={entered_password}")
    except psycopg2.OperationalError as e:
        dpg.set_value("welcome_text", f"Login failed: {e}")
        dpg.show_item("login_window")
        dpg.hide_item("main_window")
        return
    
def run_query():
    with conn.cursor() as cur:
        cur.execute("""
        select * from asteroids
        """)

        for record in cur:
            print(record)
    
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

# Create main window (initially hidden)
with dpg.window(tag="main_window", label="Main Application", width=600, height=400, show=False, no_close=True):



    dpg.add_text("", tag="welcome_text")
    dpg.add_spacer(height=20)
    dpg.add_text("You have successfully logged in!")
    dpg.add_button(label="Run query", callback=run_query)
    dpg.add_button(label="Log Out", callback=lambda: [dpg.hide_item("main_window"), dpg.show_item("login_window")])


# Show the viewport and start the main loop
dpg.show_viewport()
dpg.set_primary_window("login_window", True)
dpg.start_dearpygui()
dpg.destroy_context()