extends Node2D

var fuf2 = 0
var num_num = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("menu"):
		if fuf2 == 1:
			fuf2 = 0
		else:
			fuf2 = 1
	if fuf2 == 1:
		$Onegin1/Camera2D/Button.visible = true
	else:
		$Onegin1/Camera2D/Button.visible = false
	pass
	
	if Global.go_home == 1:
		Global.goal = "Цель: Прочитать письмо"
		Music.m1.stop()
		Music.m3.play()
		get_tree().change_scene_to_file("res://Scenes/Levels/level1/room_Onegin_night.tscn")



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	DialogueManager.show_dialogue_balloon(load("res://Scenes/dialogs/level1/main.dialogue"), "end_bal")
	pass # Replace with function body.
