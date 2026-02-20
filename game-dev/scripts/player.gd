extends CharacterBody3D

@export var speed = 5.0
@export var jump_velocity = 6.0
@export var dash_speed = 15.0
@export var dash_time = 0.2
@export var fall_limit = -10.0

var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var is_dashing = false
var dash_timer = 3.0
var dash_direction = Vector3.ZERO
var spawn_position

func _ready():
	spawn_position = global_transform.origin

func _physics_process(delta):

	# Check if fallen
	if global_transform.origin.y < fall_limit:
		respawn()

	# Gravity
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity

	var input_dir = Vector3.ZERO

	if Input.is_action_pressed("move_left"):
		input_dir.x -= 1
	if Input.is_action_pressed("move_right"):
		input_dir.x += 1
	if Input.is_action_pressed("move_forward"):
		input_dir.z -= 1
	if Input.is_action_pressed("move_back"):
		input_dir.z += 1

	input_dir = input_dir.normalized()

	if Input.is_action_just_pressed("dash") and input_dir != Vector3.ZERO:
		is_dashing = true
		dash_timer = dash_time
		dash_direction = input_dir

	if is_dashing:
		velocity.x = dash_direction.x * dash_speed
		velocity.z = dash_direction.z * dash_speed
		dash_timer -= delta
		if dash_timer <= 0:
			is_dashing = false
	else:
		velocity.x = input_dir.x * speed
		velocity.z = input_dir.z * speed

	move_and_slide()

func respawn():
	global_transform.origin = spawn_position
	velocity = Vector3.ZERO
