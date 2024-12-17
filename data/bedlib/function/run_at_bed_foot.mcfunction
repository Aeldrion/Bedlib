#> bedlib:run_at_bed_foot
#
# If the tile at the current position is a bed, runs the provided command at the middle of the bed foot
# Macro function
#
# @input
#   command: string
#       The command to run
# @output
#   Succeeds if there is a bed head at the current position and the command was executed successfully
#   Returns the return value of the executed command

$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=foot] run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=head, facing=west] positioned ~1 ~ ~ run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=head, facing=east] positioned ~-1 ~ ~ run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=head, facing=north] positioned ~ ~ ~1 run return run $(command)
$execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:beds[part=head, facing=south] positioned ~ ~ ~-1 run return run $(command)
return fail
