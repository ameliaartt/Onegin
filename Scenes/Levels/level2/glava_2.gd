extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Music.m3.stop()
	Music.m1.play()
	get_tree().change_scene_to_file("res://Scenes/Levels/level2/voluem2.tscn")
	pass # Replace with function body.
