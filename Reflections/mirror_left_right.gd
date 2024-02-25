extends CharacterBody2D

@onready var sfx = $Button/AudioStreamPlayer2D

func _ready():
	
	if get_node("Button").is_visible():
		
		get_node("AnimatedSprite2D").show()
		get_node("AnimatedSprite2D").play("left")
		get_node("light right").hide()
		get_node("light left").show()
		
		$"light right/rayright".enabled = false
		$"light left/rayleft".enabled = true
		
	else:
		get_node("AnimatedSprite2D").hide()
		
func _on_button_toggled(toggled_on):
	
	if get_node("AnimatedSprite2D").is_visible():
		
		sfx.play()
		
		if toggled_on == true:
		
			get_node("AnimatedSprite2D").play("right")
			get_node("light right").show()
			get_node("light left").hide()
		
			if $"light left/rayleft".is_colliding():
				var collider = $"light left/rayleft".get_collider()
				collider.hide()
		
			$"light right/rayright".enabled = true
			$"light left/rayleft".enabled = false
			
		else:
		
			get_node("AnimatedSprite2D").play("left")
			get_node("light right").hide()
			get_node("light left").show()
		
			if $"light right/rayright".is_colliding():
				var collider = $"light right/rayright".get_collider()
				collider.hide()
		
			$"light right/rayright".enabled = false
			$"light left/rayleft".enabled = true
