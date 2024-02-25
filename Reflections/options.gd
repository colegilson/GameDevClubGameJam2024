extends Control

@onready var music = $AudioStreamPlayer2D
@onready var musicbus = AudioServer.get_bus_index("music")
@onready var sfxbus = AudioServer.get_bus_index("sound effects")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_musicslider_value_changed(value):
	AudioServer.set_bus_volume_db(musicbus, linear_to_db(value))
	AudioServer.set_bus_mute(musicbus, value < 0.05)


func _on_sfxslider_value_changed(value):
	AudioServer.set_bus_volume_db(sfxbus, linear_to_db(value))
	AudioServer.set_bus_mute(sfxbus, value < 0.05)
