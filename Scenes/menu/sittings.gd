extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.


func _on_h_scroll_bar_value_changed(value: float) -> void:
	Music.menu.set_volume_db(float(value))
	Music.m1.set_volume_db(float(value))
	Music.m2.set_volume_db(float(value))
	Music.m3.set_volume_db(float(value))
	pass # Replace with function body.
