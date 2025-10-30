$data modify storage tl:temp string.list_value set string storage tl:temp string.text $(previousindex) $(currentindex)
data modify storage tl:temp string.list append from storage tl:temp string.list_value

scoreboard players add $stringIndex_old string.math 1
scoreboard players add $stringIndex string.math 1

execute store result storage tl:temp string.previousindex int 1 run scoreboard players get $stringIndex_old string.math
execute store result storage tl:temp string.currentindex int 1 run scoreboard players get $stringIndex string.math

execute if score $stringIndex string.math < $stringLength.plusone string.math run function tl:title_private/split_string with storage tl:temp string