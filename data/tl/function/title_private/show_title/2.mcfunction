
$data modify storage tl:values Titles[{username:$(username)}].title.list_2 append from storage tl:values Titles[{username:$(username)}].title.list_1[0]

$data remove storage tl:values Titles[{username:$(username)}].title.list_1[0]

$data modify storage tl:values Titles[{username:$(username)}].title.list_2 append value "_"
$function tl:title_private/show_title/3 with storage tl:values Titles[{username:$(username)}].title
$data remove storage tl:values Titles[{username:$(username)}].title.list_2[-1]

$function tl:title_private/show_title/playsound with storage tl:values Titles[{username:$(username)}].title
