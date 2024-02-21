extends CharacterBody2D

func _ready():
	#if get_node("CollisionShape2D").islight()
	get_node("AnimatedSprite2D").play("left")
	get_node("light left").hide()
	get_node("light right").hide()

func _on_button_toggled(toggled_on):
	
	if get_node("AnimatedSprite2D").is_visible():
		if toggled_on == true:
			get_node("AnimatedSprite2D").play("right")
			get_node("light right").show()
			get_node("light left").hide()
			
		else:
			get_node("AnimatedSprite2D").play("left")
			get_node("light right").hide()
			get_node("light left").show()
