extends Sprite

# Declare member variables here.
var movementSpeed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	# NOTE: Uses TRANSLATION; NOT anything physics based.
	if Input.is_key_pressed(KEY_W):
		translate(Vector2(0,-movementSpeed))
	
	if Input.is_key_pressed(KEY_A):
		translate(Vector2(-movementSpeed,0))
	
	if Input.is_key_pressed(KEY_S):
		translate(Vector2(0,movementSpeed))
	
	if Input.is_key_pressed(KEY_D):
		translate(Vector2(movementSpeed,0))
