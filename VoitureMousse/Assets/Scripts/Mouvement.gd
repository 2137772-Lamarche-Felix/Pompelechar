extends KinematicBody2D

var speed = 100
var angular_speed = PI

func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	
	rotation += angular_speed * direction * delta
	
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
	#	velocity = Vector2.UP.rotated(rotation) * speed
	#if Input.is_action_pressed("ui_down"):
	#	velocity = Vector2.DOWN.rotated(rotation) * speed
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed	
#	var velocity = Vector2.UP.rotated(rotation) * speed
	velocity = move_and_slide(velocity)
	position += velocity * delta
#
#	rotation += angular_speed * delta
#	position += velocity * delta


