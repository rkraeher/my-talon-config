import subprocess 
from talon import Module, Context

mod = Module()
ctx = Context()

mod.list("template_message", desc="A list of text files containing message templates")

ctx.lists["user.template_message"] = {
    # instead of hard coding the path we could use some regex to dynamically match based on the voiced filename
    "draft": "/Users/rudi.kraeher/Desktop/draft.md",
    # ... other templates

}

@mod.action_class
class Actions:
    def copy_template(template: str) -> None:
        """Copies text from named file to system clipboard"""
        with open(template) as f:
            data = f.read()
            return subprocess.run("pbcopy", text=True, input=data)
            # clip should be the windows equivalent of pbcopy
            # subprocess.run(['clip.exe'], input=data.strip().encode('utf-16'), check=True)
