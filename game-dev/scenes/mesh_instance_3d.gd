extends MeshInstance3D

var speed = 2.0
var direction = 1
var limit = 3.0
var rotation_speed = 2.0

func _process(delta):
	# Move left and right
	position.x += speed * direction * delta
	
	if position.x > limit:
		direction = -1
	elif position.x < -limit:
		direction = 1
	
	# Rotate continuously
	rotate_y(rotation_speed * delta)
