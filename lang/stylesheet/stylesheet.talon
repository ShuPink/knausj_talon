mode: user.stylesheet
mode: command
and code.language: stylesheet
-
# tag(): user.code_operators
# tag(): user.code_comment
# tag(): user.code_generic
tag(): user.stylesheet

# I'm using css modules with React, otherwise would probably
# make the class name formatter kebab case (DASH_SEPARATED)

settings():
    user.stylesheet_scss_variable_formatter = "DASH_SEPARATED"
    user.stylesheet_css_name_formatter = "PRIVATE_CAMEL_CASE"

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

justify [content] {user.flex}:
  insert("justify-content: {flex};")  

display block:
  insert("display: block;")  

display span: 
  insert("display: span;")  

display inline block: 
  insert("display: inline-block;")

display none:
  insert("display: none;")

# quantifiers ---
{user.cssproperty} [is] <number> {user.units}:
  insert("{cssproperty}: {number}{units};")

{user.cssproperty} is:
  insert("{cssproperty}: ;")
  key(left)


hello {user.units}:
  insert("hello")

<number> {user.cssunits}:
  insert("{number}{cssunits}")

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

variable <user.text>:
  insert("$")
  user.stylesheet_scss_variable(text)

# Selectors

# I'm using css modules with React, otherwise would probably
# make this formatter kebab case (DASH_SEPARATED)
class <user.text>:
  insert(".")
  user.stylesheet_css_name(text)
  insert(" {}")
  key(left)

identity <user.text>:
  insert("#")
  user.stylesheet_css_name(text)
  insert(" {}")
  key(left)

# test ----

mangle <user.text>:
  user.mangle(text)

# state spread: "..."

# ^funky <user.text>$: user.code_private_function(text)
# ^pro funky <user.text>$: user.code_protected_function(text)
# ^pub funky <user.text>$: user.code_public_function(text)

import utilities: 
  insert('''@import "/styles/utils.scss";''')

