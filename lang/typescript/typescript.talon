mode: user.typescript
mode: user.auto_lang
and code.language: typescript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
# settings():
#     user.code_private_function_formatter = "SNAKE_CASE"
#     user.code_protected_function_formatter = "SNAKE_CASE"
#     user.code_public_function_formatter = "SNAKE_CASE"
#     user.code_private_variable_formatter = "SNAKE_CASE"
#     user.code_protected_variable_formatter = "SNAKE_CASE"
#     user.code_public_variable_formatter = "SNAKE_CASE"
#     # whether or not to use uint_8 style datatypes
#     #    user.use_stdint_datatypes = 1

  
^interface <user.text>$:
  user.insert_cursor('interface {user.formatted_text(text, "PUBLIC_CAMEL_CASE")} {{[|]}}')
  key(enter)

^type <user.text>$:
  user.insert_cursor('type {user.formatted_text(text, "PUBLIC_CAMEL_CASE")} = {{[|]}}')
  key(enter)

define property <user.text> as {user.tstype}:
  user.insert_cursor('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}: {tstype}[|];')

define property <user.text> as {user.tstype} array:
  user.insert_cursor('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}: {tstype}[][|];')

define argument <user.text> as {user.tstype}:
  user.insert_cursor('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}: {tstype}[|]')

define argument <user.text> as {user.tstype} array:
  user.insert_cursor('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}: {tstype}[][|]')

return type JSX Element:
  insert(': JSX.Element')

infer props <user.text>$:
  insert(': InferProps<typeof {user.formatted_text(text, "PUBLIC_CAMEL_CASE")}.propTypes>')

action(user.code_type_definition): "type "
