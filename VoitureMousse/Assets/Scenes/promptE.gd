extends Node

var e = "ui_e"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.visible = false
	
func _process(delta):
	if Global.prompteE == 1:
		if Input.is_action_pressed(e):
			Global.prompteE = 0
			if Global.playerState == 0:
				Global.playerState = 1
			if Global.playerState == 1:
				Global.playerState = 0
			get_tree().change_scene("res://Assets/Scenes/MainMaison.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("prompteE"):
		$AnimatedSprite.visible = true
		Global.prompteE = 1
	else:
		$AnimatedSprite.visible = false


func _on_Area2D_body_exited(body):
	$AnimatedSprite.visible = false
	Global.prompteE = 0
