mode: user.typescript
mode: command
and code.language: typescript
mode: user.javascript
mode: user.auto_lang
and code.language: javascript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

# custom commands ------
# this is vscode specific, because it keeps auto completing the comment
action(user.code_document_string):
  user.insert_cursor("/**\n[|]")

# JSX

^component <user.text>$:
  insert('<{user.formatted_text(text, "PUBLIC_CAMEL_CASE")} />')
  key("ctrl-left")

parent component <user.text>:
  insert('<{user.formatted_text(text, "PUBLIC_CAMEL_CASE")}>')
  insert('</{user.formatted_text(text, "PUBLIC_CAMEL_CASE")}>')
  key("ctrl-left:2")

# for import { something } from 'some_module'; use the inbuilt snippet
toggle imports: user.code_toggle_libraries()

import <user.code_libraries>:
    user.code_insert_library(code_libraries, "")

import component <user.text>: 
  insert('''import {user.formatted_text(text, "PUBLIC_CAMEL_CASE")} from '';''')
  key(left)
  key(left)

import module <user.text>: 
  insert('''import {user.formatted_text(text, "PRIVATE_CAMEL_CASE")} from '';''')
  key(left)
  key(left)

class name is:
  insert('className={}')
  key(left)

classes are:
  insert('''classes={{{{}}}}''')
  key(left:2)

property <user.text>:
  insert('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}={{}}')
  key(left)

property string <user.text>:
  insert('{user.formatted_text(text, "PRIVATE_CAMEL_CASE")}=""')
  key(left)

key <user.text>:
  insert('{text}: ,')
  key(left)

key string <user.text>:
  insert('{text}: "",')
  key(left:2)

arrow funky:
  insert(' => {};')
  key(left:2)

break point {user.breakpoints}:
  insert('{breakpoints}={{}}')
  key(left)
    
(op | is) strict equal: " === "
(op | is) strict not equal: " !== "

state const: "const "

state let: "let "

state var: "var "

state async: "async "

state await: "await "

state map:
    insert(".map()")
    key(left)
    
state filter:
    insert(".filter()")
    key(left)
    
state reduce:
    insert(".reduce()")
    key(left)
    
state spread: "..."

^funky <user.text>$: user.code_default_function(text)
^pro funky <user.text>$: user.code_protected_function(text)
^pub funky <user.text>$: user.code_public_function(text)
