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
    "title": "title",
    "header": "header",
    "footer": "footer",
    "main": "main",
    "navigation": "nav",
    "nav": "nav",
    "division": "div",
    "div": "div",
    "image": "img",
    "video": "video",
    "eye frame": "iframe",
    "anchor": "a",
    "paragraph": "p",
    "span": "span",   
    "pre": "pre",
    "code": "code",
    "section": "section",
    "heading one": "h1",
    "heading two": "h2",
    "heading three": "h3",
    "heading four": "h4",
    "heading five": "h5",
    "heading six": "h6",
    "table": "table",
    "table body": "tbody",
    "table head": "thead",
    "table row": "tr",
    "table header": "th",
    "table data": "td",
    "ordered list": "ol",
    "unordered list": "ul",
    "list item": "li",
    "vector": "svg",
    "canvas": "canvas",
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