extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level1/glava1.tscn")
	Music.menu.stop()
	Music.m3.play()
	Global.mus = 2
	pass # Replace with function body.
