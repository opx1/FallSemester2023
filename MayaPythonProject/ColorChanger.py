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

# Set color index to 13 (red) for the selected objects
selected_objects = cmds.ls(selection=True)
change_override_color(selected_objects, 13)

# 13 red
# 6 light blue
# 5 dark blue
# 14 green