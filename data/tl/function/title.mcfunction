# macros:
# $(text)
# $(tick)
# $(location)
# $(sound)
# $(args)
#   |_____ $(font) // It will set the font
#   |_____ $(is_literal) // If the text itself is already split i.e. looks like [{text:"a"},{text:"b"},..]; can also be used for words.
#   |_____ $(is_bold) // Is a Boolean; it will set all text to Bold.
#   |_____ $(is_italic) // Is a Boolean like is_bold, it will set all text to italic


$data modify storage tl:values Titles append value {"text":$(text),"sleepTicks":$(tick),title:{"location":$(location),"sound":'$(sound)'}, args:$(args)}
function tl:title_private/username
function tl:title_private/delete_username with storage tl:temp profile

# split_string init
    scoreboard objectives remove string.math
    scoreboard objectives add string.math dummy
        execute store result score $stringLength string.math run data get storage tl:values Titles[-1].text
        execute store result score $stringLength.plusone string.math run data get storage tl:values Titles[-1].text
        scoreboard players add $stringLength.plusone string.math 1
        scoreboard players set $stringIndex_old string.math 0
        scoreboard players add $stringIndex string.math 1

    data remove storage tl:temp string
        execute store result storage tl:temp string.previousindex int 1 run scoreboard players get $stringIndex_old string.math
        execute store result storage tl:temp string.currentindex int 1 run scoreboard players get $stringIndex string.math
        execute store result storage tl:temp string.length int 1 run data get storage tl:values Titles[-1].text
        data modify storage tl:temp string.text set from storage tl:values Titles[-1].text


function tl:title_private/literal_check
data modify storage tl:values Titles[-1].title.list_1 set from storage tl:temp string.list
tag @s add title.lerp.show
$scoreboard players set @s title.lerp.value $(tick)
$scoreboard players set @s title.lerp.timer $(tick)
scoreboard players reset @s title.lerp.iteration