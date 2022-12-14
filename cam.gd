extends KinematicBody2D
var velocity = Vector2()

func _process(delta):
		if Input.is_action_pressed("ui_right"):
			velocity.x += 1
		elif Input.is_action_pressed("ui_left"):
			velocity.x -= 1
		if Input.is_action_pressed("ui_up"):
			velocity.y -= 1
		elif Input.is_action_pressed("ui_down"):
			velocity.y += 1
		velocity = move_and_slide(velocity)
		position = velocity
