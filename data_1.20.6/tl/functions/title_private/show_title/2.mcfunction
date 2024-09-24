$data modify storage tl:values Titles[{username:$(username)}].title.list_2 append from storage tl:values Titles[{username:$(username)}].title.list_1[0]
$data remove storage tl:values Titles[{username:$(username)}].title.list_1[0]
$function tl:title_private/show_title/3 with storage tl:values Titles[{username:$(username)}].title
$function tl:title_private/show_title/playsound with storage tl:values Titles[{username:$(username)}].title
