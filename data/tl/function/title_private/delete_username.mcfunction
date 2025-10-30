$data remove storage tl:values Titles[{"username":$(username)}]
$data modify storage tl:values Titles[-1].username set value $(username)