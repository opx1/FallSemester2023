import maya.cmds as cmds
import random

def duplicate_and_disperse(selected_objects, num_duplicates, min_x, max_x, min_y, max_y, min_z, max_z):

    if not selected_objects:
        cmds.warning("No objects selected. Please select at least one object.")
        return

    for obj in selected_objects:
        # Duplicate the object multiple times
        for _ in range(num_duplicates):
            duplicate_obj = cmds.duplicate(obj, returnRootsOnly=True)[0]

            # Randomly disperse the duplicated object
            x_pos = random.uniform(min_x, max_x)
            y_pos = random.uniform(min_y, max_y)
            z_pos = random.uniform(min_z, max_z)

            cmds.move(x_pos, y_pos, z_pos, duplicate_obj)

            print(f"{duplicate_obj} duplicated and dispersed.")

selected_objects = cmds.ls(selection=True)
duplicate_and_disperse(selected_objects, num_duplicates=5, min_x=-10, max_x=10, min_y=-5, max_y=5, min_z=-10, max_z=10)
