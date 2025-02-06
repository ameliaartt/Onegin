extends Node2D

var fuf2 = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Button.visible = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	if Input.is_action_just_pressed("menu"):
		if fuf2 == 1:
			fuf2 = 0
		else:
			fuf2 = 1
	if fuf2 == 1:
		$Button.visible = true
	else:
		$Button.visible = false
		
	if Global.sleep == 1:
		Global.goal = "Прочитать письма"
		get_tree().change_scene_to_file("res://Scenes/Levels/level2/badroom.tscn")



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.
