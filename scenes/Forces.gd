extends RigidBody2D

var speed = 500

func _process(delta):
	# Process user input and apply force to the ball
	var direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1

	apply_central_impulse(direction.normalized() * speed)
