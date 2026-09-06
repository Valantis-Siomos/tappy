extends Control


var GAME = preload("uid://bnqilomf5vcb8")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("fly"):
		get_tree().change_scene_to_packed(GAME)
