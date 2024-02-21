extends CharacterBody2D
func _ready():
	get_node("AnimatedSprite2D").play("up")
	get_node("light up").hide()
	get_node("light down").hide()

func _on_button_toggled(toggled_on):
	if get_node("AnimatedSprite2D").is_visible():
		if toggled_on == true:
			get_node("AnimatedSprite2D").play("down")
			get_node("light down").show()
			get_node("light up").hide()
		else:
			get_node("AnimatedSprite2D").play("up")
			get_node("light down").hide()
			get_node("light up").show()
