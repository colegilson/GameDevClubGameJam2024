extends Control

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")



func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://level1.tscn")
