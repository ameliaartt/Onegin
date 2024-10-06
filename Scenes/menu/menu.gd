extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	get_tree().quit()
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level1/glava1.tscn")
	pass # Replace with function body.


func _on_load_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/Load.tscn")
	pass # Replace with function body.


func _on_endes_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/Endes.tscn")
	pass # Replace with function body.
