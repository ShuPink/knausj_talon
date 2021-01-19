tag: user.mouse_grid_enabled
-
#M grid:
full grid:
    user.grid_activate()

^grid$:
    user.grid_place_window()
    user.grid_activate()

grid <user.number_key>+:
    user.grid_place_window()
    user.grid_activate()
    user.grid_narrow_list(number_key_list)

# grid <user.number_key>+:
full grid <user.number_key>+:
    user.grid_activate()
    user.grid_narrow_list(number_key_list)

# I turned this off because I can't get "grid off" working in this mode
#grid screen <number>:
#    user.grid_select_screen(number)
#    user.grid_activate()
