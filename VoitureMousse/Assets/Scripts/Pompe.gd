extends Area2D

onready var police = get_node("policeSprite")


func _on_Pompe_body_entered(body: Area2D) -> void:
	$explosion2.shot()
	police.visible = false
	Global.update_pompe(1)


