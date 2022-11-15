extends KinematicBody2D

var speed = 100
var angular_speed = PI
var droite = "ui_right"
var gauche = "ui_left"
var haut = "ui_up"
var bas = "ui_down"

func _ready():
	remove_from_group("")

func _process(delta):
				
	if Global.scene == 3:
		$interieur.visible = true
		$Sprite.visible = false
		$Lumiere_derriere_droite.visible = false
		$Lumiere_derriere_gauche.visible = false
		$Clignotant_droit.visible = false
		$Clignotant_gauche.visible = false
		
	if Global.scene == 2:
		$interieur.visible = false
		$Sprite.visible = true
		$Lumiere_derriere_droite.visible = true
		$Lumiere_derriere_gauche.visible = true
		$Clignotant_droit.visible = true
		$Clignotant_gauche.visible = true
		
	$Clignotant_droit.visible = false
	$Clignotant_gauche.visible = false
	var direction = 0
	if Input.is_action_pressed(gauche):
		direction = -1
		$Clignotant_gauche.visible = true
	if Input.is_action_pressed(droite):
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
	if Input.is_action_pressed(haut):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed(bas):
		velocity = Vector2.DOWN.rotated(rotation) * speed
		$Lumiere_derriere_gauche.visible = true
		$Lumiere_derriere_droite.visible = true
#	var velocity = Vector2.UP.rotated(rotation) * speed
	velocity = move_and_slide(velocity)
	position += velocity * delta
	
	if !is_in_group("touchePolice"):
		#set_position(get_position() + Vector2(306, 48))
		set_position(Vector2(306, 48))
		 
	if !is_in_group("turboJus"):
		add_to_group("turboJus");
		speed = 200
		yield(get_tree().create_timer(5.0), "timeout")
		speed = 100
		
#	rotation += angular_speed * delta
#	position += velocity * delta
	Global.speedd = speed 


