extends KinematicBody2D

var speed = 100
var angular_speed = PI

func _process(delta):
				
	$Clignotant_droit.visible = false
	$Clignotant_gauche.visible = false
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
		$Clignotant_gauche.visible = true
	if Input.is_action_pressed("ui_right"):
		$Clignotant_droit.visible = true
		direction = 1
	
	rotation += angular_speed * direction * delta
	
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
	#	velocity = Vector2.UP.rotated(rotation) * speed
	#if Input.is_action_pressed("ui_down"):
	#	velocity = Vector2.DOWN.rotated(rotation) * speed
	$Lumiere_derriere_gauche.visible = false
	$Lumiere_derriere_droite.visible = false
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed
		$Lumiere_derriere_gauche.visible = true
		$Lumiere_derriere_droite.visible = true
#	var velocity = Vector2.UP.rotated(rotation) * speed
	velocity = move_and_slide(velocity)
	position += velocity * delta
	
	if !is_in_group("touchePolice"):
		#set_position(get_position() + Vector2(306, 48))
		set_position(Vector2(306, 48))
		 
#
#	rotation += angular_speed * delta
#	position += velocity * delta


