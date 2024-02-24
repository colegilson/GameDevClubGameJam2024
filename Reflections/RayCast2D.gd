extends RayCast2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
		if is_colliding():
			var collider = get_collider()
			if get_parent().get_parent().is_visible():
				collider.show()
			else:
				collider.hide()
			
