os: windows
-

# ref - https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec

# open start menu - "super" on it's own doesn't activate
start:
	key(ctrl-esc)
#
# focus app on task bar
task <number>:
	key("super-{number}")

# cycle through open instances of app on task bar
cycle task <number>:
	key("ctrl-super-{number}")

# unfortunately alt-` for window_next on linux
# doesn't work for Windows.
# Instead, the following apps have been pinned to my task bar
# 1. Ignore this
# 2. Explorer
# 3. Firefox
# 4. VScode

cycle explorer: 
	key("ctrl-super-2")

cycle firefox: 
	key("ctrl-super-3")

cycle (studio | code): 
	key("ctrl-super-4")

# end cycle commands ---

task switch: 
	key("alt-tab")	

task list:
	key("super-tab")

move [window] {user.arrow_key}:
	key("super-{arrow_key}")

window minimize:
	key("super-down")

window maximize: 
	key("super-up")

^alter$:
	key("alt")
	
