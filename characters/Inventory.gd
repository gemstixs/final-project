extends Node

class_name Inventory

@export var resources: Dictionary = {}

#sets up signal to inventory display
signal resource_count_changed(type : ItemResource, new_count : int) 

func add_resources(type : ItemResource, amount : int):
	if(resources.has(type)):
		resources[type] = resources[type] + amount
	else:
		resources[type] = amount
	emit_signal("resource_count_changed", type, resources[type])
