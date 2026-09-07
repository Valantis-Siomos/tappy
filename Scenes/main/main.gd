extends Control




func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("fly"):
		GameManager.load_game_screen()


func _ready() -> void:
	get_tree().paused = false
