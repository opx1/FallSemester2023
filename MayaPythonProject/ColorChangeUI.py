import maya.cmds as cmds

def change_override_color(selected_objects, color_index):
    if not selected_objects:
        cmds.warning("No objects selected. Please select at least one object.")
        return

    for obj in selected_objects:
        # Get the shape nodes of the object
        shape_nodes = cmds.listRelatives(obj, shapes=True, fullPath=True) or []

        if not shape_nodes:
            cmds.warning(f"No shape nodes found for {obj}.")
            continue

        # Change the override color of each shape node
        for shape_node in shape_nodes:
            # Check if the shape has an override color attribute
            if cmds.attributeQuery("overrideColor", node=shape_node, exists=True):
                # Enable override
                cmds.setAttr(f"{shape_node}.overrideEnabled", 1)
                # Set the override color
                cmds.setAttr(f"{shape_node}.overrideColor", color_index)

                print(f"Override color of {shape_node} set to {color_index}.")
            else:
                print(f"{shape_node} does not have an override color attribute.")

def create_ui():

    window_name = "overrideColorChangerUI"

    # Check if the UI window already exists and delete it if it does
    if cmds.window(window_name, exists=True):
        cmds.deleteUI(window_name, window=True)

    # Create the UI window
    cmds.window(window_name, title="Override Color Changer", sizeable=False)

    # Create the main layout
    cmds.columnLayout(adjustableColumn=True)

    # Create a slider for color selection
    color_slider = cmds.intSliderGrp(label="Override Color", field=True, min=1, max=31, value=1, fieldMinValue=1, fieldMaxValue=31)

    # Create a button to execute the color change
    cmds.button(label="Change Color", command=lambda x: change_color_from_slider(color_slider))

    cmds.showWindow(window_name)

def change_color_from_slider(color_slider):

    color_index = cmds.intSliderGrp(color_slider, query=True, value=True)
    selected_objects = cmds.ls(selection=True)
    change_override_color(selected_objects, color_index)

create_ui()
