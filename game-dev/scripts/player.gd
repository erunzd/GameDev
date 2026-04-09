extends CharacterBody3D

@export var player_id = 1
@export var player_color : Color = Color(1,1,1)

var speed = 6
var jump_velocity = 5
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _physics_process(delta):

	velocity.z = -8  # auto forward

	var input_x = 0.0

	if player_id == 1:
		input_x = Input.get_action_strength("p1_right") - Input.get_action_strength("p1_left")

		if Input.is_action_just_pressed("p1_jump") and is_on_floor():
			velocity.y = jump_velocity

	elif player_id == 2:
		input_x = Input.get_action_strength("p2_right") - Input.get_action_strength("p2_left")

		if Input.is_action_just_pressed("p2_jump") and is_on_floor():
			velocity.y = jump_velocity

	velocity.x = input_x * speed

	if not is_on_floor():
		velocity.y -= gravity * delta

	move_and_slide()

	if position.y < -10:
		get_tree().reload_current_scene()

func _ready():
	if player_id == 1:
		$NameLabel.text = "P1"
	else:
		$NameLabel.text = "P2"
	var mat = StandardMaterial3D.new()
	mat.albedo_color = player_color
	$MeshInstance3D.material_override = mat
