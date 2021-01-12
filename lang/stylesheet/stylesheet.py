from talon import Module, Context, actions, ui, imgui, settings

ctx = Context()
ctx.matches = r"""
mode: user.stylesheet
mode: command 
and code.language: stylesheet
"""

ctx.lists["user.units"] = {
    "pixels": "px",
    "percent": "%",
    "rem": "rem",
    "view height": "vh",
    "view width": "vw",
}

ctx.lists["user.attribute"] = {
    "height": "height",
    "width": "width",
    "font": "font",
    "font size": "font-size",
    "font family": "font-family",
    "padding": "padding",
    "padding left": "padding-left",
    "padding top": "padding-top",
    "padding right": "padding-right",
    "padding bottom": "padding-bottom",    
    "margin": "margin",
    "margin left": "margin-left",
    "margin top": "margin-top",
    "margin right": "margin-right",
    "margin bottom": "margin-bottom",
    "top": "top",
    "left": "left",
    "right": "right",
    "bottom": "bottom",
    "background": "background",
    "color": "color",
    "border": "border",
}

ctx.lists["user.flex"] = {
    "flex start": "flex-start",
    "flex end": "flex-end",
    "center": "center",
    "space between": "space-between",
    "space around": "space-around",
    "space evenly": "space-evenly",
    "stretch": "stretch",
    "baseline": "baseline",
}

mod = Module()
mod.list("units", desc="Common css units")
mod.list("attribute", desc="Common css attributes")
mod.list("flex", desc="Common flexbox options")

mod.tag("stylesheet", desc="Stylesheet commands")

@ctx.action_class("user")
class user_actions:
    def mangle(text: str):
        actions.insert("___" + text)

@mod.action_class
class Actions:
    def mangle(text: str):
        """Mangles some text"""