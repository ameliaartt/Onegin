extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bad"

func action():
	DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
	Global.knaz = 1
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
