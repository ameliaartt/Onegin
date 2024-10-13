extends CharacterBody2D

@export var speed = 300 # How fast the player will move (pixels/sec).
@export var accel = 400
@export var friction = 600



func _ready():
	pass
	
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("right"):
		velocity.x += 1
		$AnimatedSprite2D.animation = "left"
	if Input.is_action_pressed("left"):
		velocity.x -= 1
		$AnimatedSprite2D.animation = "right"
	if Input.is_action_pressed("down"):
		velocity.y += 1
		$AnimatedSprite2D.animation = "down"
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		$AnimatedSprite2D.animation = "up"

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

	position += velocity * delta
	
	move_and_slide()
