@tool
extends Sprite2D

@onready var equip_hitbox : Area2D = $Area2D

@export var equipped_idea : EquipabbleIdea : #changing equipped ideas through changing texture
	set(next_equipped):
		equipped_idea = next_equipped
		self.texture = equipped_idea.texture

func _on_area_2d_body_entered(body): 
	if(equipped_idea.has_method("interact_with_body")): 
		#checks that body the equipped idea is interacting with is interactable, signal from area2d sent to the equip node
		equipped_idea.interact_with_body(body) #diverts flow to harvesting script
