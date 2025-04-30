class_name  TextSceneSaveDataManageComponent
extends Node

func _ready() -> void:
	call_deferred("load_text_scene")
	

func load_text_scene()->void:
	SaveGameManager.load_game()
