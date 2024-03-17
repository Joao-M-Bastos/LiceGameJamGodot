extends Control

func _on_play_pressed():
	get_tree().change_scene_to_file("res://Carlos/Scenes/Level.tscn")


func _on_controls_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
