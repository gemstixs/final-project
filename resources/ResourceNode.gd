extends StaticBody2D
class_name ResourceNode

#type of resource (harvestable vs. the portal that tests originality)
@export var node_types : Array[ResourceNodeType]

@export var starting_resources : int = 1
@export var item_type : PackedScene

@onready var level_parent = get_parent()

var current_resources : int : 
	set (value):
		# a resource node emptied of resources is removed from the scene
		if (value <= 0):
			queue_free() #queue_free just means remove

# Called when the node enters the scene tree for the first time.
func _ready():
	current_resources = starting_resources

func harvest(amount : int):
	for n in amount: 
		spawn_resource()
	current_resources -= amount

func spawn_resource():
	var item_instance : Item = item_type.instantiate() as Item
	level_parent.add_child(item_instance) #add item drop to scene as child of main scene node
	item_instance.position = position #item spawns where resourcenode was

