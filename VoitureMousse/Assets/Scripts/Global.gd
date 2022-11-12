extends Node

###
### code qui sert à compter les points
###
var Pompe =0
var jus = 0
var prompteE = 0
var playerState = 0
var scene = 0

signal Pompe_changed(Pompe)

func _process(delta):
	if Input.is_action_pressed("ui_2"):
		get_tree().change_scene("res://Assets/Scenes/MainNiveau2.tscn")
	if Input.is_action_pressed("ui_1"):
		get_tree().change_scene("res://Assets/Scenes/MainZZtope.tscn")
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

func update_pompe(delta):
	Pompe+=delta
	if Pompe >= 45:
		get_tree().change_scene("res://Assets/Scenes/win.tscn")
	
func update_jus():
	jus = jus + 1
###
### code qui sert à compter les vies du joueur
###

var Vie =3

signal Vie_changed(Vie)

func update_vie(delta):
	Vie-=delta
	if Vie <= 0:
		get_tree().change_scene("res://Assets/Scenes/game_over.tscn")
