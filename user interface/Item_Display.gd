extends HBoxContainer

class_name ItemDisplay

@onready var texture_rect : TextureRect = $TextureRect
@onready var label : Label = $Label

var item_type : ItemResource

func update_count(count : int):
	label.text = str(count)
