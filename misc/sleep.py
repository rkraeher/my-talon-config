from talon import app, actions

def disable():
    actions.speech.disable()

# launch talon in sleep mode
app.register("ready", disable)