#> bedlib:private/remove
#
# Auxiliary function for removing beds
# See note in bedlib:private/modify_bed
#
# @input
#   color
#       The current color of the bed (e.g. "magenta")
#   dx, dz
#       The position of the bed's foot relative to the bed head
#   direction, opposite
#       The facing direction of the bed (e.g. "east") and the opposite direction (e.g. "west")
# @context A bed's head
# @within bedlib:remove
# @private

# Flip both tiles
$setblock ~ ~ ~ minecraft:$(color)_bed[part=head, facing=$(opposite)]
$setblock ~$(dx) ~ ~$(dz) minecraft:$(color)_bed[part=foot, facing=$(opposite)]

# Bed tiles can now be disposed of safely
$fill ~ ~ ~ ~$(dx) ~ ~$(dz) minecraft:air
