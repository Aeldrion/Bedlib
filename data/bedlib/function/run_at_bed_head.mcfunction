#> bedlib:run_at_bed_head
#
# If the tile at the current position is a bed, runs the provided command at the middle of the bed head
# Macro function
#
# @input
#   command: string
#       The command to run
# @output
#   Succeeds if there is a bed at the current position and the command was executed successfully
#   Returns the return value of the executed command

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=head] run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=foot, facing=west] positioned ~-1 ~ ~ run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=foot, facing=east] positioned ~1 ~ ~ run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=foot, facing=north] positioned ~ ~ ~-1 run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=foot, facing=south] positioned ~ ~ ~1 run return run $(command)
return fail
