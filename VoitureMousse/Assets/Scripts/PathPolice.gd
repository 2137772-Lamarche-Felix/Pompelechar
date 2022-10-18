extends KinematicBody2D

onready var path_follow = get_parent() #accéder au node parent qui ici est Path2D donc path est stocké dans path_follow
#onready var joueur = get_parent().get_child(1)
export var _speed = 0 #variables exporté apparaissent dans Inspecteur

func _physics_process(delta):
		#sert à mettre des valeurs dans path_follow offset pour que sa bouge comme désiré. 
		#ici delta sert à rendre le mouvement consistant et smooth	
		path_follow.set_offset(path_follow.get_offset()+_speed+delta) 
		



func _on_Police_body_entered(body):
	Global.update_vie(1)
#	Timer
