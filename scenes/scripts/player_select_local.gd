extends Node

var multipleCounterScene = preload("res://scenes/multiple_counters.tscn")

func _on_back_button_down() -> void:
	var mainScene = load("res://scenes/main.tscn")
	get_tree().change_scene_to_packed(mainScene)


func _on_done_button_down() -> void:
	
	var multipleC = multipleCounterScene.instantiate()
	multipleC.init($Control/PlayerCounter.counter)
	get_tree().root.add_child(multipleC)
	get_tree().current_scene.queue_free()
	get_tree().current_scene = multipleC
