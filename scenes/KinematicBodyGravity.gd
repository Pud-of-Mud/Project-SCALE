extends KinematicBody

# Defining the physics
var velocity = Vector3(0, 0, 0) # Needs to be vector3 becasue of using the 3D Engine. 
export var gravity : float = 10.0
export var jumpHeight : float = 9.0
export var movementSpeed : float = 7.0


func _physics_process(delta):
	# Reset the velocity every frame to prevent "stacking"
	# of left and right movement.
	velocity = Vector3(0, velocity.y, 0)

	# Apply gravity
	if not(is_on_floor()):
		velocity.y -= gravity * delta
	
	# Inputs & Physics for movement 
	if Input.is_key_pressed(KEY_D):
		velocity.x += movementSpeed
	if Input.is_key_pressed(KEY_A):
		velocity.x -= movementSpeed

	# Input & Physics for jumping
	if Input.is_key_pressed(KEY_SPACE) and is_on_floor():
		velocity.y = jumpHeight

	
	# Move the KinematicBody
	velocity = move_and_slide(velocity, Vector3.UP)
