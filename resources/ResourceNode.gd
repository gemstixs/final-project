extends StaticBody2D
class_name ResourceNode

# fix later: @export var node_types : Array[ResourceNodeType]
@export var starting_resources : int = 1
@export var pickup_type : PackedScene

var current_resources : int : 
	set (value):
		# a resource node emptied of resources is removed from the scene
		if (value <= 0):
			queue_free()

# Called when the node enters the scene tree for the first time.
func _ready():
	current_resources = starting_resources


func harvest(amount : int):
	current_resources -= amount


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				print("Click")
			else:
				print("Left button was released")
