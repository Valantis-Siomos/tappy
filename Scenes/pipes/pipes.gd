class_name Pipes

extends Node2D

const SCROLL_SPEED: float = 120.0
@onready var score_sound: AudioStreamPlayer = $ScoreSound


func _physics_process(delta: float) -> void:
	position.x -= SCROLL_SPEED * delta
	

func _on_screen_exited() -> void:
	queue_free()


func _on_timer_timeout() -> void:
	queue_free()


func _on_pipe_body_entered(body: Node2D) -> void:
	if body is Tappy: body.die()


func _on_laser_body_entered(_body: Node2D) -> void:
	score_sound.play()
	ScoreManager.add_point()
