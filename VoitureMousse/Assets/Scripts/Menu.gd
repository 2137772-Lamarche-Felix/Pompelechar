extends Control

func _ready():
	$VBoxContainer/Start.grab_focus()


func _on_Start_pressed():
	get_tree().change_scene("res://Assets/Scenes/MainZZtope.tscn") # Replace with function body.


func _on_Quit_pressed():
	get_tree().quit() # 
	
