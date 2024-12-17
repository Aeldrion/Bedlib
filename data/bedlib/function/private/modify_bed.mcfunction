#> bedlib:private/set_occupied_macro
#
# Auxiliary function for modifying beds
# Note:
#   Beds can't be directly modified (changing either half updates to the other half immediately) or removed (removing one half causes the other half to break)
#   This method seems to work and to not cause problems with adjacent beds
#
# @input
#   old_color
#       The current color of the bed (e.g. "magenta")
#   new_color
#       The new color of the bed (e.g. "orange")
#   state
#       The new value of the occupied state; one of "true", "false"
#   dx, dz
#       The position of the bed's foot relative to the bed head
#   direction, opposite
#       The facing direction of the bed (e.g. "east") and the opposite direction (e.g. "west")
# @context A bed's head
# @within bedlib:set_occupied
# @within bedlib:set_color
# @private

# Flip both tiles
$setblock ~ ~ ~ minecraft:$(old_color)_bed[occupied=$(state), part=head, facing=$(opposite)]
$setblock ~$(dx) ~ ~$(dz) minecraft:$(old_color)_bed[occupied=$(state), part=foot, facing=$(opposite)]

# Bed tiles can now be disposed of safely
$fill ~ ~ ~ ~$(dx) ~ ~$(dz) minecraft:air

# Place the new bed
$setblock ~ ~ ~ minecraft:$(new_color)_bed[occupied=$(state), part=head, facing=$(direction)]
$setblock ~$(dx) ~ ~$(dz) minecraft:$(new_color)_bed[occupied=$(state), part=foot, facing=$(direction)]
