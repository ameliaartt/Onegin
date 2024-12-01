extends Node2D


# Called when the node enters the scene tree for the first time.
var fuf2 = 0
var num_num = 0
func _ready() -> void:
	$Button.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("menu"):
		if fuf2 == 1:
			fuf2 = 0
		else:
			fuf2 = 1
	if fuf2 == 1:
		$Button.visible = true
	else:
		$Button.visible = false
	pass
	
	if Global.knaz == 1 and Global.move == 0:
		get_tree().change_scene_to_file("res://Scenes/Levels/level1/thatr.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.
