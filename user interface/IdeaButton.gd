@tool
extends Button
class_name IdeaButton 

@export var idea : Idea :
	set(idea_to_slot) :
		idea = idea_to_slot
		icon = idea.texture

var equip : Equip

func _ready():
	connect("pressed", _on_pressed)

func _on_pressed():
	if(idea is Idea):
		if(equip != null):
			equip.equipped_idea = idea
