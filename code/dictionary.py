from talon import Context, Module

mod = Module()
ctx = Context()

mod.list("dictionary", desc="user specific dictionary")

# "user.dictionary" is used to isolate words commonly used  to 
# so we don't have fight with talon's dictation mode as much
ctx.lists["user.dictionary"] = {
  "sink": "sync",
  "file name": "filename",
  "jason": "json",
  "parse": "parse",
  "error": "error",
  "user": "user",
  "log in": "login"
}
