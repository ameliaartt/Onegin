extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

	
func _on_button_pressed() -> void:
	Global.end1 = 1
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.
