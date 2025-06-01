extends Node


func _on_local_button_button_down() -> void:
	var playerSelectLocalScene = load("res://scenes/player_select_local.tscn")
	get_tree().change_scene_to_packed(playerSelectLocalScene)
