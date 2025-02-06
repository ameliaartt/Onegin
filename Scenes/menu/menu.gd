extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.mus == 0:
		Music.menu.play()
		Global.mus = 1
	if Global.mus == 2:
		Music.m3.stop()
		Music.menu.play()
		Global.mus = 1
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_pressed():
	Global.save_game()
	get_tree().quit()
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/level1/glava1.tscn")
	Music.menu.stop()
	Music.m3.play()
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
	Global.anekdot = 0
	Global.go_home = 0
	Global.vine = 0
	Global.poet = 0
	Global.sholer = 0
	Global.komik2 = 0
	Global.dada = 0

	pass # Replace with function body.


func _on_load_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/Load.tscn")
	pass # Replace with function body.


func _on_endes_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/Endes.tscn")
	pass # Replace with function body.


func _on_sittings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/sittings.tscn")
	pass # Replace with function body.
