from talon import Module, Context, actions, ui, imgui, settings

ctx = Context()
ctx.matches = r"""
mode: user.html
mode: command 
and code.language: html
mode: user.javascript
mode: command
and code.language: javascript
"""

ctx.lists["user.htmlelement"] = {
    "head": "head",
    "meta": "meta",
    "header": "header",
    "footer": "footer",
    "main": "main",
    "navigation": "nav",
    "nav": "nav",
    "division": "div",
    "div": "div",
    "image": "img",
    "hyperlink": "a",
    "paragraph": "p",
    "span": "span",   
    "pre": "pre",
    "code": "code",
    "section": "section",
}

ctx.lists["user.htmlattribute"] = {
    "height": "height",
    "width": "width",
    "source": "src",
    "alternative": "alt",
    "reference": "href",
    "class": "class",
    "id": "id",
    "style": "style",
}


mod = Module()
mod.list("htmlelement", desc="Common html elements")
mod.list("htmlattribute", desc="Common html attributes")

mod.tag("html", desc="html commands")

@ctx.action_class("user")
class user_actions:
    def mangle(text: str):
        actions.insert("___" + text)

@mod.action_class
class Actions:
    def mangle(text: str):
        """Mangles some text"""