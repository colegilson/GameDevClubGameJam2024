extends CharacterBody2D

@onready var sfx = $Button/AudioStreamPlayer2D

func _ready():
	
	if get_node("Button").is_visible():
	
		get_node("AnimatedSprite2D").show()
		get_node("AnimatedSprite2D").play("up")
		get_node("light down").hide()
		get_node("light up").show()
		
		$"light up/rayup".enabled = true
		$"light down/raydown".enabled = false
		
	else:
		get_node("AnimatedSprite2D").hide()
		
func _on_button_toggled(toggled_on):
	if get_node("AnimatedSprite2D").is_visible():
		
		sfx.play()
		
		if toggled_on == true:
			
			get_node("AnimatedSprite2D").play("down")
			get_node("light down").show()
			get_node("light up").hide()
			
			if $"light up/rayup".is_colliding():
				var collider = $"light up/rayup".get_collider()
				collider.hide()
				
			$"light up/rayup".enabled = false
			$"light down/raydown".enabled = true
			
		else:
			get_node("AnimatedSprite2D").play("up")
			get_node("light down").hide()
			get_node("light up").show()
			
			if $"light down/raydown".is_colliding():
				var collider = $"light down/raydown".get_collider()
				collider.hide()
				
			$"light up/rayup".enabled = true
			$"light down/raydown".enabled = false
