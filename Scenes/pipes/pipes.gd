class_name Pipes

extends Node2D

const SCROLL_SPEED: float = 120.0


func _physics_process(delta: float) -> void:
	position.x -= SCROLL_SPEED * delta
	



func _on_screen_exited() -> void:
	queue_free()


func _on_timer_timeout() -> void:
	queue_free()
