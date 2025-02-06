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
	Global.level1 = 0
	Global.mus = 2
	Global.clothes_1 = 0
	Global.shelf_count = 0
	Global.bad_count = 0
	Global.bydyar_count = 0
	Global.most = 0
	Global.chaika = 0
	Global.soli = 0
	Global.allei = 0
	Global.lovers = 0
	Global.do_count = 0
	Global.move1 = 0
	Global.knaz = 0
	Global.solev2 = 0
	Global.fontan = 0
	Global.girls = 0
	Global.dama = 0
	Global.komik = 0
	pass # Replace with function body.


func _on_level_2_pressed() -> void:
	Music.menu.stop()
	Music.m1.play()
	Global.sleep = 0
	Global.rep = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/level2/glava2.tscn")
	pass # Replace with function body.
