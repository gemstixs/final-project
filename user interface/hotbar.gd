extends Control

@onready var player : Player = get_tree().get_first_node_in_group("player")
var equip: Equip

@onready var grid_container : GridContainer = $GridContainer

func _ready():
	if(player):
		equip = player.find_child("Equip")
		
		for button in grid_container.get_children():
			if(button is IdeaButton): 
				button.equip = equip
