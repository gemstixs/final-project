extends GridContainer

@export var item_display_template : PackedScene

@onready var inventory_display : GridContainer

var displays : Array[ItemDisplay]
var player_inventory : Inventory

func _ready():
	var player : Player = get_tree().get_first_node_in_group("player")
	player_inventory = player.find_child("Inventory") as Inventory
	player_inventory.connect("resource_count_changed", _on_player_inventory_resource_count_changed)

func _on_player_inventory_resource_count_changed(type : ItemResource, new_count : int) -> void:
	var current_display : ItemDisplay
	
	for display in displays:
		if(display.item_type == type):
			current_display.update_count(new_count)
			current_display = display
			break
	if(current_display==null):
		var new_display : ItemDisplay = item_display_template.instantiate() as ItemDisplay
		inventory_display.add_child(new_display)
		new_display.item_type = type
		new_display.update_count(new_count)
