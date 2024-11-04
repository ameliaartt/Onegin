extends CharacterBody2D

@export var speed = 300 # How fast the player will move (pixels/sec).
@export var accel = 400
@export var friction = 600

@onready var actionable_finger: Area2D = $Area2D

var fuf = 0;
var fuf2 = 0;

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed("tasks"):
		if fuf == 1:
			fuf = 0
		else:
			fuf = 1
	if fuf == 1:
		$Label.set("visible_characters", -1)
		$Label.text = Global.goal
		$ColorRect.visible = true
	else:
		$Label.set("visible_characters", 0)
		$ColorRect.visible = false

	
	
	if Input.is_action_just_pressed("do"):
		var actionables = actionable_finger.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
		return
		
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("right"):
		velocity.x += 1
		if Global.do_count == 4:
			Global.move += 1
		if Global.clothes_1 == 0:
			$AnimatedSprite2D.animation = "left"
		else:
			$AnimatedSprite2D.animation = "left_ofic"
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		if Global.do_count == 4:
			Global.move += 1
		if Global.clothes_1 == 0:
			$AnimatedSprite2D.animation = "right"
		else:
			$AnimatedSprite2D.animation = "right_ofic"
	if Input.is_action_pressed("down"):
		velocity.y += 1
		if Global.do_count == 4:
			Global.move += 1
		if Global.clothes_1 == 0:
			$AnimatedSprite2D.animation = "down"
		else:
			$AnimatedSprite2D.animation = "down_ofic"
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		if Global.do_count == 4:
			Global.move += 1
		if Global.clothes_1 == 0:
			$AnimatedSprite2D.animation = "up"
		else:
			$AnimatedSprite2D.animation = "up_ofic"

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

	position += velocity * delta
	
	move_and_slide()
