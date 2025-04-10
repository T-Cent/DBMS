import dearpygui.dearpygui as dpg

dpg.create_context()
dpg.create_viewport(title='Custom Title', width=600, height=300)

tables = ["users", "orders", "products"]  # Replace with dynamic table list if needed

dpg.show_item_registry()

def run_query(sender, data):
    print("hello")
    
with dpg.window(label="Example Window"):
    dpg.hide_item([22, "Example Window"])

    dpg.add_text("Build your SQL query visually")

    dpg.add_input_text(label="Select", default_value="*")
    dpg.add_combo(label="From", items=tables, default_value=tables[0])
    dpg.add_input_text(label="Order By", default_value="")

    dpg.add_button(label="Execute", callback=run_query)

    dpg.add_text("Generated SQL:")
    dpg.add_input_text(label="sql_preview", multiline=True, readonly=True, width=500, height=100)

with dpg.window(label="auth"):
    dpg.add_text("Nebula Core")
    dpg.add_input_text(label="Username")
    dpg.add_input_text(label="Password", password=True)
    dpg.add_button(label="Login")
    dpg.hide_item([21, "auth"])
    dpg.show_item([22, "Example Window"])


dpg.setup_dearpygui()
dpg.show_viewport()
dpg.start_dearpygui()
dpg.destroy_context()
