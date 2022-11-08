extends Node

###
### code qui sert à compter les points
###
var Pompe =0
var jus = 0
signal Pompe_changed(Pompe)

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
