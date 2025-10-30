$execute if data storage tl:values Titles[{username:$(username)}].args.is_literal run data modify storage tl:values Titles[{username:$(username)}].title.list_2 append from storage tl:values Titles[{username:$(username)}].title.list_1[0]
$execute unless data storage tl:values Titles[{username:$(username)}].args.is_literal run function tl:title_private/show_title/args/main with storage tl:temp profile

$data remove storage tl:values Titles[{username:$(username)}].title.list_1[0]
#$data modify storage tl:values Titles[{username:$(username)}].title.list_2 append value "_"
$function tl:title_private/show_title/3 with storage tl:values Titles[{username:$(username)}].title
#$data remove storage tl:values Titles[{username:$(username)}].title.list_2[-1]

$function tl:title_private/show_title/playsound with storage tl:values Titles[{username:$(username)}].title
