app: firefox
-
tag(): browser
tag(): user.tabs
tab search:
    browser.focus_address()
    insert("% ")
tab search <user.text>$:
    browser.focus_address()
    insert("% {text}")
    key(down)
    

# devtool shortcuts
# https://developer.mozilla.org/en-US/docs/Tools/Keyboard_shortcuts

open web console:
	key(ctrl-shift-k)

open style editor: 
	key(shift-f7)

open profiler:
	key(shift-f5)	

open network [monitor]:
	key(ctrl-shift-e)

responsive design [mode]:
	key(ctrl-shift-m)

storage inspector:
	key(shift-f9)

#this is a toggle
pick element:
	key(ctrl-shift-c)

# the following commands needs the toolbox to be in focus

# goes to next tool tab
tool [tab] next:
	key(ctrl-])

tool [tab] last:
	key(ctrl-[)

