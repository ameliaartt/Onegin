extends Area2D

@export var dialogue_resource: DialogueResource
@export var dialogue_start: String = "bad"

func action():
	if Global.bad_count < 10 and Global.shelf_count == 0:
		Global.bad_count += 1
		DialogueManager.show_dialogue_balloon(dialogue_resource, dialogue_start)
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
