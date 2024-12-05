import maya.cmds as cmds

def create_controls_for_joint(joint_name, parent_control=None):
    # Create NURBS curve control if it doesn't exist already
    control_name = joint_name.replace("_jnt", "_ctrl")
    if not cmds.objExists(control_name):
        # Create control
        control = cmds.circle(name=control_name, nr=(0, 1, 0), ch=False)[0]  # Ensure getting the transform node

        # Create parent group at the origin
        parent_group_name = joint_name.replace("_jnt", "_ctrl_grp")
        parent_group = cmds.group(empty=True, name=parent_group_name)

        # Match group transformation to joint's transformation
        joint_position = cmds.xform(joint_name, query=True, translation=True, worldSpace=True)
        joint_rotation = cmds.xform(joint_name, query=True, rotation=True, worldSpace=True)
        cmds.xform(parent_group, translation=joint_position, rotation=joint_rotation, worldSpace=True)

        # Move control to parent group's transformation
        cmds.parent(control, parent_group)

        # Set control's attributes to zero
        cmds.setAttr(control + ".tx", 0)
        cmds.setAttr(control + ".ty", 0)
        cmds.setAttr(control + ".tz", 0)
        cmds.setAttr(control + ".rx", 0)
        cmds.setAttr(control + ".ry", 0)
        cmds.setAttr(control + ".rz", 0)
        cmds.setAttr(control + ".sx", 1)
        cmds.setAttr(control + ".sy", 1)
        cmds.setAttr(control + ".sz", 1)
        cmds.rotate(0, 0, 90, control, relative=True)

        # Freeze transformations on control
        cmds.makeIdentity(control, apply=True, translate=True, rotate=True, scale=True)

        # Parent control under parent control or previous parent group
        if parent_control:
            cmds.parent(parent_group, parent_control)

    # Recursively create controls for children joints
    children_joints = cmds.listRelatives(joint_name, children=True, type='joint') or []
    for child_joint in children_joints:
        create_controls_for_joint(child_joint, control)


def create_joint_controls():
    # Get selected joints
    selected_joints = cmds.ls(selection=True, type='joint')

    if not selected_joints:
        cmds.warning("Please select one or more joints.")
        return

    for joint_name in selected_joints:
        create_controls_for_joint(joint_name)


# Call the function
create_joint_controls()

#Seperate script here

import maya.cmds as cmds

def add_constraints_for_matching_controls_and_joints():
    # Get only the currently selected controls
    selected_controls = cmds.ls(selection=True, type='transform')

    if not selected_controls:
        cmds.warning("No controls selected.")
        return

    for control in selected_controls:
        # Check if the selected object is a control by ensuring it ends with "_ctrl"
        if control.endswith("_ctrl"):
            joint_name = control.replace("_ctrl", "_jnt")
            if cmds.objExists(joint_name):
                # Apply parent and scale constraints if they don't already exist
                existing_parent_constraints = cmds.listRelatives(control, type='parentConstraint')
                existing_scale_constraints = cmds.listRelatives(control, type='scaleConstraint')

                if not existing_parent_constraints:
                    cmds.parentConstraint(control, joint_name, weight=1)
                if not existing_scale_constraints:
                    cmds.scaleConstraint(control, joint_name, weight=1)
            else:
                cmds.warning("Could not find joint corresponding to control: {}".format(control))
        else:
            cmds.warning("Selected object is not a control: {}".format(control))

# Call the function
add_constraints_for_matching_controls_and_joints()
