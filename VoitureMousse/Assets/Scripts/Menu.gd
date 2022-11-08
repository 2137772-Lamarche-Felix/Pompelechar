extends Control

var i = 0

func _ready():
	$VBoxContainer.grab_focus()
#	if $Sprite:



func _on_Start_pressed():
	get_tree().change_scene("res://Assets/Scenes/MainZZtope.tscn") # Replace with function body.
	Global.Pompe = 0
	Global.Vie = 3


func _on_Quit_pressed():
	get_tree().quit() # 
	

	
