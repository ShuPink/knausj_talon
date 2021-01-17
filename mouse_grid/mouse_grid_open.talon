tag: user.mouse_grid_showing
-
<user.number_key>:
    user.grid_narrow(number_key)

grid off:
    user.grid_close()

over:
    user.grid_close()

# the grid will "reset" aka disappear, but you'll still be in grid mode just with no visual cues
# grid reset:
#    user.grid_reset()

grid reset: 
    user.grid_close()
    user.grid_place_window()
    user.grid_activate()

# #to do: doesn't do anything
# grid back:
#    user.grid_go_back()
