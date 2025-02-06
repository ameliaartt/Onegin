extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bydyar"

func action():
	DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass
