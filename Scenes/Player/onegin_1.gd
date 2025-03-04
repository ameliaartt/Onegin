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
		if actionables.size() > 0 and Global.dilog == 0:
			actionables[0].action()
		return
		
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("right"):
		if Global.move == 0:
			velocity.x += 1
			$AnimatedSprite2D.animation = "left"
	if Input.is_action_pressed("left"):
		if Global.move == 0:
			velocity.x -= 1
			$AnimatedSprite2D.animation = "right"
	if Input.is_action_pressed("down"):
		if Global.move == 0:
			velocity.y += 1
			$AnimatedSprite2D.animation = "down"
	if Input.is_action_pressed("up"):
		if Global.move == 0:
			velocity.y -= 1
			$AnimatedSprite2D.animation = "up"

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

	position += velocity * delta
	
	move_and_slide()
