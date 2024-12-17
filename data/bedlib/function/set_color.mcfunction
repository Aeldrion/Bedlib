#> bedlib:set_color
#
# Changes the color of the bed at the current position
# Overwrites storage bedlib:out color
#
# @input
#   color: string
#       The new color of the bed (e.g. "magenta")

# If this is a bed foot, move to the bed head first
$execute if block ~ ~ ~ #minecraft:beds[part=foot] run return run function bedlib:run_at_bed_head {command: "function bedlib:set_color {color: '$(color)'}"}

# Get color
function bedlib:get_color
data modify storage bedlib:args old_color set from storage bedlib:out color
$data modify storage bedlib:args new_color set value $(color)

# Get occupied state
execute if block ~ ~ ~ #minecraft:beds[occupied=true] run data modify storage bedlib:args state set value "true"
execute if block ~ ~ ~ #minecraft:beds[occupied=false] run data modify storage bedlib:args state set value "false"

# Get facing direction
execute if block ~ ~ ~ #minecraft:beds[facing=west] run data merge storage bedlib:args {direction: "west", opposite: "east", dx: 1, dz: 0}
execute if block ~ ~ ~ #minecraft:beds[facing=east] run data merge storage bedlib:args {direction: "east", opposite: "west", dx: -1, dz: 0}
execute if block ~ ~ ~ #minecraft:beds[facing=north] run data merge storage bedlib:args {direction: "north", opposite: "south", dx: 0, dz: 1}
execute if block ~ ~ ~ #minecraft:beds[facing=south] run data merge storage bedlib:args {direction: "south", opposite: "north", dx: 0, dz: -1}

# Modify the bed
function bedlib:private/modify_bed with storage bedlib:args
