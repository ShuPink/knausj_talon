# -1 because we are repeating, so the initial command counts as one
# <user.ordinals>: core.repeat_command(ordinals-1)

# I keep firing the ordinals by accident, so I've replaced it with below
<number_small> times: core.repeat_command(number_small-1)
(repeat that|twice|again): core.repeat_command(1)
(repeat|again) [that] <number_small> [times]: core.repeat_command(number_small)

