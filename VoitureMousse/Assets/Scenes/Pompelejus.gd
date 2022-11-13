extends Area2D

onready var explosion = get_parent().get_child(0)


func _on_Pompe_body_entered(body: Area2D) -> void: 
	for pompeBody in get_overlapping_bodies():
		if pompeBody.is_in_group("toucheJus") :
			pompeBody.remove_from_group("turboJus");
			explosion.shot()
			Global.update_jus()
			queue_free()
			
	


