extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bydyar"

func action():
	if Global.bydyar_count < 1:
		Global.bydyar_count += 1
		Global.goal = "Цель: одется"
		DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	pass
