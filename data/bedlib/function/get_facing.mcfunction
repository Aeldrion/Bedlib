#> bedlib:get_facing
#
# Gets the facing direction of the bed at the current position
#
# @writes
#   storage bedlib:out facing: string
#       The facing direction; one of "west", "east", "north", south"
#       Reset if none
# @output
#   Success/result: 1 if the current position is a bed, 0 otherwise
# @api

data remove storage bedlib:out facing
execute if block ~ ~ ~ #minecraft:beds[facing=west] run return run data modify storage bedlib:out facing set value "west"
execute if block ~ ~ ~ #minecraft:beds[facing=east] run return run data modify storage bedlib:out facing set value "east"
execute if block ~ ~ ~ #minecraft:beds[facing=north] run return run data modify storage bedlib:out facing set value "north"
execute if block ~ ~ ~ #minecraft:beds[facing=south] run return run data modify storage bedlib:out facing set value "south"

return fail
