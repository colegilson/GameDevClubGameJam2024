extends Control

func _on_resume_pressed():
	get_node("level").show()
	get_node("pause_menu").hide()
	Engine.time_scale = 1

func _on_howto_pressed():
	get_tree().change_scene_to_file("res://how_to.tscn")

func _on_quit_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
