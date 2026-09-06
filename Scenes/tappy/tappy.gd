class_name Tappy

extends CharacterBody2D

const JUMP_FORCE: float = -350.0


@onready var animation_player: AnimationPlayer = $AnimationPlayer

var _gravity: float = ProjectSettings.get("physics/2d/default_gravity")
var _jumped: bool = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("fly"):
		_jumped = true

func _physics_process(delta: float) -> void:
	velocity.y += _gravity * delta
	if _jumped:
		velocity.y = JUMP_FORCE
		animation_player.play("fly")
		_jumped = false
	move_and_slide()
	
	if is_on_floor(): die()


func die() -> void:
	get_tree().paused = true
	
