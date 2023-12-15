import maya.cmds as cmds


def change_override_color(selected_objects, override_color):
    for obj in selected_objects:
        # Get the shape node of the object
        shapes = cmds.listRelatives(obj, shapes=True, fullPath=True) or []

        for shape in shapes:
            # Set the override color for the shape node
            cmds.setAttr(shape + ".overrideColor", override_color)
            cmds.setAttr(shape + ".overrideRGBColors", 0)  # Disable RGB color override


def main():
    # Get the currently selected objects
    selected_objects = cmds.ls(selection=True, long=True)

    if not selected_objects:
        cmds.warning("No objects selected. Please select at least one object.")
        return

    # Set the override color to red (color index 13)
    override_color = 13

    # Call the function to change the override color
    change_override_color(selected_objects, override_color)


if __name__ == "__main__":
    main()
