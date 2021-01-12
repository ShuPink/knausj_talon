mode: user.stylesheet
mode: command
and code.language: stylesheet
-
# tag(): user.code_operators
# tag(): user.code_comment
# tag(): user.code_generic
tag(): user.stylesheet

# overflow ---
overflow hidden:
  insert("overflow: hidden;")

overflow y scroll:
  insert("overflow-y: scroll;")

# flexbox ---

display flex: 
  insert("display: flex;")

flex direction column:
  insert("flex-direction: column;")

flex direction row:
  insert("flex-direction: row;")

flex grow <number>:
  insert("flex-grow: {number};")  

flex shrink <number>:
  insert("flex-grow: {number};")  

align items {user.flex}:
  insert("align-items: {flex};")

align content {user.flex}:
  insert("align-content: {flex};")

justify content {user.flex}:
  insert("justify-content: {flex};")  

display block:
  insert("display: block;")  

display span: 
  insert("display: span;")  

display inline span: 
  insert("display: inline-span;")

display none:
  insert("display: none;")

# quantifiers ---
{user.attribute} [is] <number> {user.units}:
  insert("{attribute}: {number}{units};")

{user.attribute} is:
  insert("{attribute}: ;")
  key(left)

<number> {user.units}:
  insert("{number}{units}")

calculate:
  insert("calc()")
  key(left)

# position ---

position absolute: 
  insert("position: absolute;")

position fixed:
  insert("position: fixed;")

position relative:
  insert("position: relative;")

position sticky:
  insert("position: sticky;")

# scss ----
include:
  insert("@include ;")
  key(left)

# Selectors

# I'm using css modules with React, otherwise would probably
# make this formatter kebab case (DASH_SEPARATED)
class <user.text>:
  insert(".")
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
  insert(" {}")
  key(left)

id <user.text>:
  insert("#")
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
  insert(" {}")
  key(left)



# test ----

mangle <user.text>:
  user.mangle(text)

# state spread: "..."

# ^funky <user.text>$: user.code_private_function(text)
# ^pro funky <user.text>$: user.code_protected_function(text)
# ^pub funky <user.text>$: user.code_public_function(text)