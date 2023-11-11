extends KinematicBody2D

var speed = 80

func _process(delta):

	position.y -= delta * speed * -1
