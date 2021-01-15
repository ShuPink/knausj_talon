os: windows
-

# ref - https://support.microsoft.com/en-us/windows/keyboard-shortcuts-in-windows-dcc61a57-8ff0-cffe-9796-cb9706c75eec

# open start menu - "super" on it's own doesn't activate
start:
	key(ctrl-esc)

# focus app on task bar
task <number>:
	key("super-{number}")

# cycle through open instances of app on task bar
cycle task <number>:
	key("ctrl-super-{number}")

task switch: 
	key("alt-tab")	

task list:
	key("super-tab")

move [window] {user.arrow_key}:
	key("super-{arrow_key}")

minimise: 
	key("super-down")

