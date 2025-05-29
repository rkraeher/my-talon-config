# We could also copy paste selected texts directly into the draft document
draft:
    user.edit_text_file("/Users/rudi.kraeher/Desktop/draft.md")
    sleep(500ms)
    edit.file_end()

delete: key(cmd-backspace)
free: key(f3)
dupe: key(shift-alt-down)
save: key(cmd-s)
minimize: key(cmd-m)

(roll | slide) right | kite: key(ctrl-right)
(roll | slide) left | kept: key(ctrl-left)
(roll | slide) up | cup: key(ctrl-up)
(roll | slide) down | cod: key(ctrl-down)

snap right: key(ctrl-alt-right)
snap left: key(ctrl-alt-left)
snap full: key(ctrl-alt-enter)
snap down: key(ctrl-alt-down)
snap up: key(ctrl-alt-up)