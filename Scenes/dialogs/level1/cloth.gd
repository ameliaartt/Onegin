extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bydyar"

func action():
	if Global.shelf_count < 1 and Global.bydyar_count > 0:
		Global.clothes_1 += 1
		Global.shelf_count += 1
		Global.goal = "Цель: выйти"
		DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	pass
