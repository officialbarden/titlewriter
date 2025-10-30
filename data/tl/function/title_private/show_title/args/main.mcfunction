$data modify storage tl:values Titles[{username:$(username)}].title.list_2 append value {text:"", shadow_color:0, font:"default", bold: FALSE, italic: FALSE}
$data modify storage tl:values Titles[{username:$(username)}].title.list_2[-1].text set from storage tl:values Titles[{username:$(username)}].title.list_1[0]
$data modify storage tl:values Titles[{username:$(username)}].title.list_2[-1].font set from storage tl:values Titles[{username:$(username)}].args.font
$data modify storage tl:values Titles[{username:$(username)}].title.list_2[-1].bold set from storage tl:values Titles[{username:$(username)}].args.is_bold
$data modify storage tl:values Titles[{username:$(username)}].title.list_2[-1].italic set from storage tl:values Titles[{username:$(username)}].args.is_italic
