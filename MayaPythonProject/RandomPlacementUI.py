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

def create_ui():

    window_name = "duplicationDisperseUI"

    # Check if the UI window already exists and delete it if it does
    if cmds.window(window_name, exists=True):
        cmds.deleteUI(window_name, window=True)

    # Create the UI window
    cmds.window(window_name, title="Duplication and Disperse", sizeable=False)

    # Create the main layout
    cmds.columnLayout(adjustableColumn=True)

    # Create sliders for position and duplicates
    min_x_slider = cmds.floatSliderGrp(label="Min X", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    max_x_slider = cmds.floatSliderGrp(label="Max X", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    min_y_slider = cmds.floatSliderGrp(label="Min Y", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    max_y_slider = cmds.floatSliderGrp(label="Max Y", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    min_z_slider = cmds.floatSliderGrp(label="Min Z", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    max_z_slider = cmds.floatSliderGrp(label="Max Z", field=True, minValue=-10, maxValue=10, fieldMinValue=-100, fieldMaxValue=100, value=0)
    duplicates_slider = cmds.intSliderGrp(label="Number of Duplicates", field=True, minValue=1, maxValue=10, fieldMinValue=1, fieldMaxValue=100, value=1)

    # Create a button to execute the duplication and dispersal
    cmds.button(label="Duplicate and Disperse", command=lambda x: execute_duplication_disperse(
        min_x_slider, max_x_slider, min_y_slider, max_y_slider, min_z_slider, max_z_slider, duplicates_slider
    ))

    cmds.showWindow(window_name)

def execute_duplication_disperse(min_x_slider, max_x_slider, min_y_slider, max_y_slider, min_z_slider, max_z_slider, duplicates_slider):

    min_x = cmds.floatSliderGrp(min_x_slider, query=True, value=True)
    max_x = cmds.floatSliderGrp(max_x_slider, query=True, value=True)
    min_y = cmds.floatSliderGrp(min_y_slider, query=True, value=True)
    max_y = cmds.floatSliderGrp(max_y_slider, query=True, value=True)
    min_z = cmds.floatSliderGrp(min_z_slider, query=True, value=True)
    max_z = cmds.floatSliderGrp(max_z_slider, query=True, value=True)
    num_duplicates = cmds.intSliderGrp(duplicates_slider, query=True, value=True)

    selected_objects = cmds.ls(selection=True)
    duplicate_and_disperse(selected_objects, num_duplicates, min_x, max_x, min_y, max_y, min_z, max_z)

create_ui()
