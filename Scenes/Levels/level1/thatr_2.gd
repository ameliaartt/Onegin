extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Music.m4.stop()
	Music.m2.play()
	Global.goal = "Цель: Повеселиться"
	get_tree().change_scene_to_file("res://Scenes/Levels/level1/bal.tscn")
	pass # Replace with function body.
