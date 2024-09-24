$title @s $(location) $(list_2)
scoreboard players add @s title.lerp.iteration 1
execute if score @s title.lerp.iteration = $stringLength string.math run tag @s remove title.lerp.show