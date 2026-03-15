extends CharacterBody3D

var forward_speed = 8
var move_speed = 6
var jump_velocity = 7
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):

	# Auto forward movement
	velocity.z = -forward_speed

	# Left / Right controls
	var input_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = input_x * move_speed

	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity

	# Gravity
	if not is_on_floor():
		if velocity.y > 0:
			velocity.y -= gravity * delta
		else:
			velocity.y -= gravity * 2 * delta

	move_and_slide()

	# Restart if player falls
	if position.y < -10:
		get_tree().reload_current_scene()
