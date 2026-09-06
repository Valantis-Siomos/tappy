extends Node

@export var pipes_scene: PackedScene

@onready var upper_spawns: Marker2D = $UpperSpawns
@onready var lower_spawns: Marker2D = $LowerSpawns

@onready var pipes_holder: Node = $PipesHolder

var MAIN = load("uid://bk7wx4bliuk8n")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_pipes()

func spawn_pipes() -> void:
	var new_pipes: Pipes = pipes_scene.instantiate()
	var y_pos: float  = randf_range(
		upper_spawns.position.y,
		lower_spawns.position.y,
	)
	new_pipes.position = Vector2(
		upper_spawns.position.x,
		y_pos
	)
	pipes_holder.add_child(new_pipes)

func _on_timer_timeout() -> void:
	spawn_pipes()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("test"):
		get_tree().change_scene_to_packed(MAIN)
