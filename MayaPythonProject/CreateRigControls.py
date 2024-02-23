import maya.cmds as cmds


def create_joint_controls():
    # Get selected joints
    selected_joints = cmds.ls(selection=True, type='joint')

    if not selected_joints:
        cmds.warning("Please select one or more joints.")
        return

    for joint_name in selected_joints:
        # Create NURBS curve control
        control_name = joint_name.replace("_Joint", "_Ctrl")
        control = cmds.circle(name=control_name, nr=(0, 1, 0), ch=False)[0]  # Ensure getting the transform node

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

        # Rename parent group
        cmds.rename(parent_group, parent_group_name)

        # Establish naming conventions
        control_suffix = "_Ctrl"
        parent_group_suffix = "_Grp"

        # Rename control according to naming conventions
        if not control_name.endswith(control_suffix):
            control_name = control_name + control_suffix
            cmds.rename(control, control_name)

        # Check if parent group follows naming conventions, if not, rename it
        if not parent_group_name.endswith(parent_group_suffix):
            parent_group_name = parent_group_name + parent_group_suffix
            cmds.rename(parent_group, parent_group_name)


# Call the function
create_joint_controls()
