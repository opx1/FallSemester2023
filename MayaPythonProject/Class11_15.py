import maya.cmds as cmds

def __init__(self):
    self.window_name = 'Calculate'

def delete(self):
    # check to see if exists and delete if true
    if cmds.window('%sWindow' % (self.window_name), exists=True) :
        cmds.deleteUI('%sWindow' % (self.window_name))

def creat(self):
    # create window
    self.delete()

    self.window_name = cmds.window('%sWindow' % (self.window_name),
                                     title='%s Tool' % (self.window_name))

# define layout
cmds.comlumnLayout()

# add controls as needed
cmds.button()
cmds.button()
cmds.button()

cmds.showWindow(self.window_name)

#define layout
m_col = cmds.columnLayout(p=CalculateUI.window_name, ajd=True)

cmds.intSliderGrp(p=m_col,
                  label='Number of Values',
                  field=True,
                  )

self.num_field_list = []
for i in range(num_values):
    field = cmds.floatField(p=float_row, value=0, pre=2)
    self.num_field_list.append(field)