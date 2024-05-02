extends Node2D

func _on_shiny_idea_button_pressed() -> void:
	get_tree().change_scene_to_file("res://endings/bad_ending.tscn")

func _on_your_idea_button_pressed() -> void:
	get_tree().change_scene_to_file("res://endings/good_ending.tscn")
