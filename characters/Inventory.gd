extends Node

class_name Inventory

@export var resources: Dictionary = {}

func add_resources(type : ItemResource, amount : int):
	if(resources.has(type)):
		resources[type] = resources[type] + amount
	else:
		resources[type] = amount
