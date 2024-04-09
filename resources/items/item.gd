extends Area2D
class_name Item

@export var resource_type : Resource

func _ready():
	connect("body_entered", _on_body_entered) #connecting to own signal

func _on_body_entered(body : Node2D): #when body entering item is Node2D
	var inventory = body.find_child("Inventory") #checks if body has inventory
	if(inventory):
		inventory.add_resources(resource_type, 1) 
		queue_free()
