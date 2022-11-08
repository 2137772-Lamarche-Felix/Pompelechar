extends Node

###
### code qui sert à compter les points
###
var Pompe =0

signal Pompe_changed(Pompe)

func _process(delta):
	if Input.is_action_pressed("ui_2"):
		get_tree().change_scene("res://Assets/Scenes/Niveau2.tscn")
	if Input.is_action_pressed("ui_1"):
		get_tree().change_scene("res://Assets/Scenes/MainZZtope.tscn")

func update_pompe(delta):
	Pompe+=delta
	if Pompe >= 45:
		get_tree().change_scene("res://Assets/Scenes/win.tscn")
	
###
### code qui sert à compter les vies du joueur
###

var Vie =3

signal Vie_changed(Vie)

func update_vie(delta):
	Vie-=delta
	if Vie <= 0:
		get_tree().change_scene("res://Assets/Scenes/game_over.tscn")
