extends Area2D

func _on_Pompe_body_entered(body: Area2D) -> void:
	queue_free()
	Global.update_pompe(1)
