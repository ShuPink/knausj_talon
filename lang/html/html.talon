mode: user.html
mode: command
and code.language: html
mode: user.javascript
mode: command
and code.language: javascript
-
# tag(): user.code_operators
# tag(): user.code_comment
# tag(): user.code_generic
# tag(): user.html

# elements

element {user.htmlelement}:
  insert("<{htmlelement}></{htmlelement}>")
  key(ctrl-left:2 right)

heading <number>: 
  insert("<h{number}></h{number}>")
  key(ctrl-left:2 right)

insert anchor:
  insert('<a href="link">display_text</a>')
  key(ctrl-left:2 right)

insert list:
  insert('<ul>\n<li>point_one</li>\n<li>point_two</li>\n</ul>')
  key(ctrl-left:2 right)

# attributes ---

{user.htmlattribute} string:
  insert('{htmlattribute}=""')
  key(left)

{user.htmlattribute} js:
  insert('{htmlattribute}')
  insert('''={}''')
  key(left)

# test ----

mangle <user.text>:
  user.mangle(text)

# state spread: "..."

# ^funky <user.text>$: user.code_private_function(text)
# ^pro funky <user.text>$: user.code_protected_function(text)
# ^pub funky <user.text>$: user.code_public_function(text)