# Bedlib

A minimal Minecraft data pack library for dealing with those pesky little two tile blocks.

## Functions

Bedlib functions operate on the bed at the current executing position.

### `bedlib:set_color`

Sets the color of the bed.

```mcfunction
function bedlib:set_color {color: "red"}
```

### `bedlib:set_occupied`

Sets the `occupied` state of the bed.

```mcfunction
function bedlib:set_occupied {occupied: "true"}
```

> Note: be careful to use `"true"` or `"false"` (strings) and not `true` or `false` (bytes)

### `bedlib:remove`

Fully and silently removes the bed.

```mcfunction
function bedlib:remove
```

### `bedlib:run_at_bed_head`

Runs a command at the middle of the bed's head

```mcfunction
function bedlib:run_at_bed_head {command: "summon minecraft:armor_stand"}
```

### `bedlib:run_at_bed_foot`

Runs a command at the middle of the bed's foot

```mcfunction
function bedlib:run_at_bed_foot {command: "summon minecraft:armor_stand"}
```

### `bedlib:get_color`

Writes the color of the bed as a string to storage (`bedlib:out color`)

```mcfunction
function bedlib:get_color
tellraw @a ["The bed is ", {"nbt": "color", "storage": "bedlib:out"}]
```

### `bedlib:get_facing`

Writes the facing direction of the bed as a string to storage (`bedlib:out facing`)

```mcfunction
function bedlib:get_facing
tellraw @a ["The bed is facing ", {"nbt": "facing", "storage": "bedlib:out"}]
```

## Versions

Bedlib works for Minecraft: Java Edition 1.21.4.
