extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bad"

func action():
	if Global.girls <= 5:
		DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
		Global.girls += 1
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass