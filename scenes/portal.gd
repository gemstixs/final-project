extends Node2D

func _on_portal_pressed() -> void:
	get_tree().change_scene_to_file("res://portal.tscn")

func _on_sign_pressed():
	get_tree().change_scene_to_file("res://scenes/instructions.tscn")


func _on_artist_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/artist_credits.tscn")
