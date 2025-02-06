extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label2.visible = false
	$Label6.visible = false
	$Label5.visible = false
	$Label7.visible = false
	$Label8.visible = false
	if Global.end1 == 1:
		$Label2.visible = true
	pass
	if Global.sansachive == 1:
		$Label6.visible = true
	pass
	if Global.komikachive == 1:
		$Label5.visible = true
	pass
	if Global.musicachive == 1:
		$Label7.visible = true
	pass
	if Global.kyklavod == 1:
		$Label8.visible = true
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/menu/menu.tscn")
	pass


func _on_button_2_pressed() -> void:
	Global.end1 = 0
	Global.level1 = 0
	pass # Replace with function body.
