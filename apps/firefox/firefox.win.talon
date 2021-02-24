os: windows
app: firefox
-
action(app.tab_next): key(ctrl-pagedown)
action(app.tab_previous): key(ctrl-pageup)

action(browser.bookmark):
	key(ctrl-d)

action(browser.bookmark_tabs):
	key(ctrl-shift-d)
	
action(browser.bookmarks):
	key(ctrl-shift-b)
  
# action(browser.bookmarks_bar):
# 	key(alt-v)
# 	sleep(50ms)
# 	key(t)
# 	sleep(50ms)
# 	key(b)

action(browser.bookmarks_bar):
	key(ctrl-b)

action(browser.focus_address): 
	key(ctrl-l)
	
#action(browser.focus_page):

action(browser.go_blank):
	key(ctrl-n)
	
action(browser.go_back):
	key(alt-left)

action(browser.go_forward):
	key(alt-right)
	
action(browser.go_home):
	key(alt-home)

action(browser.open_private_window):
	key(ctrl-shift-p)

action(browser.reload):
	key(ctrl-r)

action(browser.reload_hard):
	key(ctrl-shift-r)

#action(browser.reload_hardest):
	
action(browser.show_clear_cache):
	key(ctrl-shift-delete)
  
action(browser.show_downloads):
	key(ctrl-j)

action(browser.show_extensions):
	key(ctrl-shift-a)

action(browser.show_history):
	key(ctrl-h)
	
action(browser.toggle_dev_tools):
	key(ctrl-shift-i)

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

