extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Global.goal = "Цель: Прочитать письмо"
	Music.m1.stop()
	Music.m3.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/level1/room_Onegin_night.tscn")
	pass # Replace with function body.
