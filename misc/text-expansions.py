# kindred.pfizer
from talon import Module, Context

mod = Module()
ctx = Context()

mod.list("import_path", desc="A list of commonly used import paths")

ctx.lists["user.import_path"] = {
    "slides": "./assets/images/slides",
    "modals": "./assets/images/modals"
}