extends Area2D

onready var path_follow = get_parent() #accéder au node parent qui ici est Path2D donc path est stocké dans path_follow

export var _speed = 5 #variables exporté apparaissent dans Inspecteur

onready var voitureJoueur = get_node("res://Assets/Scenes/VoitureJoueur.tscn")

func _physics_process(delta):
		#sert à mettre des valeurs dans path_follow offset pour que sa bouge comme désiré. 
		#ici delta sert à rendre le mouvement consistant et smooth
		path_follow.set_offset(path_follow.get_offset()+_speed+delta)



func _on_Police_body_entered(body):
	for index in get_overlapping_bodies():
		if index.is_in_group("touchePolice"):
			index.remove_from_group("touchePolice")
			Global.update_vie(1)
			yield(get_tree().create_timer(2.0), "timeout")
			index.add_to_group("touchePolice");




#	Timer
