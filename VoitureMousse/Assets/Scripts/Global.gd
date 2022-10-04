extends Node

###
### code qui sert à compter les points
###
var Pompe =0

signal Pompe_changed(Pompe)

func update_pompe(delta):
	Pompe+=delta
	
###
### code qui sert à compter les vies du joueur
###

var Vie =3

signal Vie_changed(Vie)

func update_vie(delta):
	Vie-=delta
