extends Node

const GAME = preload("uid://bnqilomf5vcb8")
const  MAIN = preload("uid://bk7wx4bliuk8n")
const LOADING_SCREEN = preload("uid://1terrn8vuvs5")

#region Priginal

#func load_game_screen() -> void:
	#get_tree().change_scene_to_packed(GAME)
#
#func load_main_screen() -> void:
	#get_tree().change_scene_to_packed(MAIN)


#region Simple Change

var _next_scene: PackedScene

func change_to_next() -> void:
	get_tree().change_scene_to_packed(_next_scene)

func load_game_screen() -> void:
	_next_scene = GAME
	get_tree().change_scene_to_packed(LOADING_SCREEN)

func load_main_screen() -> void:
	_next_scene = MAIN
	get_tree().change_scene_to_packed(LOADING_SCREEN)

#endregion
