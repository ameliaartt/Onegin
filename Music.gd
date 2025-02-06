extends Node

@onready var menu = $Menu
@onready var m1 = $m1
@onready var m2 = $m2
@onready var m3 = $m3
@onready var m4 = $m4
@onready var sans = $sans

func do():
	await get_tree().create_timer(1).timeout
	Global.dilog = 0
