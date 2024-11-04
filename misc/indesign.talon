app: com.adobe.InDesign
-

# Default keyboard shortcut reference. Useful to check the "Product Area" for a target command. 
# https://helpx.adobe.com/indesign/using/default-keyboard-shortcuts.html

# You can open the full set of shortcuts as a Default.txt document
# Edit > Keyboard Shortcuts > Show Set

# Generics
save: key(cmd-s)
export: key(cmd-e)

# Navigation
go to page <user.number_string>: 
    # custom shortcut to "Access page number box"
    key(cmd-p)
    edit.extend_line_start()
    edit.delete()
    insert(number_string)
    key(enter)

# Tools
select: key(v)
direct select: key(a)
page: key(shift-p)
(grab | hand): key(h)
(rectangle | rect): key(f)
[select] [all] layer objects: 
    key(alt:down)
    # requires cursor to be on targeted layer
    mouse_click(0)
    key(alt:up)

# Panels
^control panel$: key(alt-cmd-6) 
all panels: key(tab)
layer panel: key(f7)
links panel: key(shift-cmd-d)
# properties shortcut is not defined by default and must be set in the app as well
properties panel: key(f9)
pages panel: key(f12)

# TODO Do we need commands for save and zoom?
# Zoom In --- Default: Cmd+=, Default: Cmd+Num +
# Zoom Out --- Default: Cmd+-, Default: Cmd+Num -