import maya.cmds as cmds


def create_joint_control():
    # Get selected joint
    selected_joint = cmds.ls(selection=True, type='joint')

    if not selected_joint:
        cmds.warning("Please select a joint.")
        return

    joint_name = selected_joint[0]

    # Create NURBS curve control
    control_name = joint_name.replace("_Joint", "_Ctrl")
    control = cmds.circle(name=control_name, nr=(0, 1, 0), ch=False)

    # Create parent group
    parent_group_name = joint_name.replace("_Joint", "_Ctrl_Grp")
    parent_group = cmds.group(empty=True, name=parent_group_name)

    # Get joint position
    joint_position = cmds.xform(joint_name, query=True, translation=True, worldSpace=True)

    # Move control to joint position
    cmds.move(joint_position[0], joint_position[1], joint_position[2], control, absolute=True)

    # Move parent group to joint position
    cmds.move(joint_position[0], joint_position[1], joint_position[2], parent_group, absolute=True)

    # Parent control under parent group
    cmds.parent(control, parent_group)

    # Rename control and parent group
    cmds.rename(control, control_name)
    cmds.rename(parent_group, parent_group_name)

    # Establish naming conventions
    control_suffix = "_Ctrl"
    parent_group_suffix = "_Grp"

    # Check if names follow naming conventions, if not, rename them
    if not control_name.endswith(control_suffix):
        control_name = control_name + control_suffix
        cmds.rename(control, control_name)

    if not parent_group_name.endswith(parent_group_suffix):
        parent_group_name = parent_group_name + parent_group_suffix
        cmds.rename(parent_group, parent_group_name)


# Call the function
create_joint_control()
