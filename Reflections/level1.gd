extends Node2D
@onready var pause_menu = $"pause menu"
var paused = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		get_node("level").show()
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		get_node("level").hide()
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused


func _on_button_pressed():
	get_tree().change_scene_to_file("res://congrats.tscn")
