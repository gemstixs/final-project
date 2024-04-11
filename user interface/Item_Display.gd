extends HBoxContainer

class_name ItemDisplay

@onready var texture_rect : TextureRect = $TextureRect
@onready var label : Label = $Label

var item_type : ItemResource
var player_inventory : Inventory

func _ready():
	var player : Player = get_tree().get_first_node_in_group("player")
	player_inventory = player.find_child("Inventory") as Inventory
	player_inventory.connect("resource_count_changed", _on_player_inventory_resource_count_changed)

func _on_player_inventory_resource_count_changed(type : ItemResource, new_count : int) -> void:
	print("new count for" + type.display_name + "is" + str(new_count))

# func update_count(count : int):
	# label.text = str(count)
