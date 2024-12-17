#> bedlib:get_color
#
# Gets the color of the bed at the executing position
#
# @writes
#   storage bedlib:out color: string
#       The color of the bed (e.g. "magenta")
#       Reset if there is no bed
# @output
#   Success/result: 1 if the current position is a bed, 0 otherwise
# @api

data remove storage bedlib:out color
execute if block ~ ~ ~ minecraft:white_bed run return run data modify storage bedlib:out color set value "white"
execute if block ~ ~ ~ minecraft:orange_bed run return run data modify storage bedlib:out color set value "orange"
execute if block ~ ~ ~ minecraft:magenta_bed run return run data modify storage bedlib:out color set value "magenta"
execute if block ~ ~ ~ minecraft:light_blue_bed run return run data modify storage bedlib:out color set value "light_blue"
execute if block ~ ~ ~ minecraft:yellow_bed run return run data modify storage bedlib:out color set value "yellow"
execute if block ~ ~ ~ minecraft:lime_bed run return run data modify storage bedlib:out color set value "lime"
execute if block ~ ~ ~ minecraft:pink_bed run return run data modify storage bedlib:out color set value "pink"
execute if block ~ ~ ~ minecraft:gray_bed run return run data modify storage bedlib:out color set value "gray"
execute if block ~ ~ ~ minecraft:light_gray_bed run return run data modify storage bedlib:out color set value "light_gray"
execute if block ~ ~ ~ minecraft:cyan_bed run return run data modify storage bedlib:out color set value "cyan"
execute if block ~ ~ ~ minecraft:purple_bed run return run data modify storage bedlib:out color set value "purple"
execute if block ~ ~ ~ minecraft:blue_bed run return run data modify storage bedlib:out color set value "blue"
execute if block ~ ~ ~ minecraft:brown_bed run return run data modify storage bedlib:out color set value "brown"
execute if block ~ ~ ~ minecraft:green_bed run return run data modify storage bedlib:out color set value "green"
execute if block ~ ~ ~ minecraft:red_bed run return run data modify storage bedlib:out color set value "red"
execute if block ~ ~ ~ minecraft:black_bed run return run data modify storage bedlib:out color set value "black"

return fail
