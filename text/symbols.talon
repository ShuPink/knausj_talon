question [mark]: "?"
(downscore | underscore): "_"
double dash: "--"
(curl | left curl): "{"
(are curl | right curl): "}"
triple quote: "'''"
(triple grave | triple back tick | gravy):
    insert("```")
(dot dot | dotdot): ".."
ellipses: "..."
(comma and | spamma): ", "
plus: "+"
arrow: "->"
dub arrow: "=>"
double arrow: "=>"
new line: "\\n"
carriage return: "\\r"
line feed: "\\r\\n"
empty dubstring:
    '""'
    key(left)
empty escaped (dubstring|dub quotes):
    '\\"\\"'
    key(left)
    key(left)
empty string:
    "''"
    key(left)
empty escaped string:
    "\\'\\'"
    key(left)
    key(left)
(inside bracket | args):
	insert("()")
	key(left)
inside (squares | list):
	insert("[]")
	key(left)
inside (curl | braces): 
	insert("{}") 
	key(left)
inside percent:
	insert("%%")
	key(left)
inside quotes:
	insert('""')
	key(left)
angle this: 
    text = edit.selected_text()
    user.paste("<{text}>")
(curl | brace | object) this: 
    text = edit.selected_text()
    user.paste("{{{text}}}")
(bracket | args) this: 
    text = edit.selected_text()
    user.paste("({text})")
percent this: 
    text = edit.selected_text()
    user.paste("%{text}%")
quote this:
    text = edit.selected_text()
    user.paste('"{text}"')
literal this:
    text = edit.selected_text()
    user.paste('`{text}`')
