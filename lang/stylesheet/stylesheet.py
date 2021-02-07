from talon import Module, Context, actions, ui, imgui, settings

ctx = Context()
ctx.matches = r"""
mode: user.stylesheet
mode: command 
and code.language: stylesheet
mode: command 
and code.language: javascript
"""

ctx.lists["user.cssunits"] = {
    "pixels": "px",
    "percent": "%", 
    "rem": "rem",
    "view height": "vh",
    "view width": "vw",
}

ctx.lists["user.cssproperty"] = {
    "height": "height",
    "max height": "max-height",
    "min height": "min-height",
    "max width": "max-width",
    "min width": "min-width",
    "width": "width",
    "font": "font",
    "font size": "font-size",
    "font family": "font-family",
    "font weight": "font-weight",
    "text transform": "text-transform",
    "letter spacing": "letter-spacing",
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
    "border radius": "border-radius",
    "line height": "line-height",
    "text align": "text-align",
    "box shadow": "box-shadow",
    "overflow": "overflow",
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

ctx.lists["user.breakpoints"] = {
    "extra small": "xs",
    "small": "sm",
    "medium": "md",
    "large": "lg",
    "extra large": "xl",
}


ctx.lists["user.scssmodule"] = {
    "fade out": "fade-out",
    "darken": "darken",
    "lighten": "lighten",
}

mod = Module()
mod.list("cssunits", desc="Common css units")
mod.list("cssproperty", desc="Common css properties")
mod.list("flex", desc="Common flexbox options")
mod.list("breakpoints", desc="Common responsive breakpoints")
mod.list("scssmodule", desc="scss module functions")

mod.tag("stylesheet", desc="Stylesheet commands")

# setting_stylesheet_scss_variable_formatter = mod.setting("stylesheet_scss_variable_formatter", str)
mod.setting("stylesheet_css_name_formatter", str)
mod.setting("stylesheet_scss_variable_formatter", str)


@ctx.action_class("user")
class user_actions:
    def mangle(text: str):
        actions.insert("___" + text)

@mod.action_class
class Actions:
    def mangle(text: str):
        """Mangles some text"""

    def stylesheet_css_name(name: str):
        """Inserts css name (generic e.g. with class or id) with formatter"""
        actions.insert(
            actions.user.formatted_text(
                name, settings.get("user.stylesheet_css_name_formatter")
            )
        ) 

    def stylesheet_scss_variable(name: str):
        """Inserts variable name with formatter"""
        actions.insert(
            actions.user.formatted_text(
                name, settings.get("user.stylesheet_scss_variable_formatter")
            )
        )    