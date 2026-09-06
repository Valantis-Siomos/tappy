extends Node

const GAME = preload("uid://bnqilomf5vcb8")
const  MAIN = preload("uid://bk7wx4bliuk8n")

func load_game_screen() -> void:
	get_tree().change_scene_to_packed(GAME)

func load_main_screen() -> void:
	get_tree().change_scene_to_packed(MAIN)
