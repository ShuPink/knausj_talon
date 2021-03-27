mode: user.html
mode: command
and code.language: html
mode: user.javascript
mode: command
and code.language: javascript
mode: user.typescript
mode: command
and code.language: typescript
-
# tag(): user.code_operators
# tag(): user.code_comment
# tag(): user.code_generic
# tag(): user.html

# elements
element {user.htmlelement}:
  user.insert_cursor("<{htmlelement}>[|]</{htmlelement}>")

insert anchor:
  user.insert_cursor('<a href="link">[|]</a>')

insert list:
  user.insert_cursor('<ul>\n<li>point_one[|]</li>\n<li>point_two</li>\n</ul>')

# attributes ---

{user.htmlattribute} string:
  user.insert_cursor('{htmlattribute}="[|]"')

{user.htmlattribute} js:
  user.insert_cursor('{htmlattribute}={{[|]}}')

# test ----

mangle <user.text>:
  user.mangle(text)

# state spread: "..."

# ^funky <user.text>$: user.code_private_function(text)
# ^pro funky <user.text>$: user.code_protected_function(text)
# ^pub funky <user.text>$: user.code_public_function(text)