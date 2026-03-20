extends CharacterBody3D

@export var patrol_speed = 2.0
@export var chase_speed = 6.0
@export var patrol_distance = 5.0

var start_position
var direction = 1

var player = null
var is_chasing = false

func _ready():
	start_position = global_position

func _physics_process(delta):

	if is_chasing and player != null:
		# Chase player
		var dir = (player.global_position - global_position).normalized()
		velocity.x = dir.x * chase_speed
		velocity.z = dir.z * chase_speed
	else:
		# Patrol left and right
		velocity.x = patrol_speed * direction
		velocity.z = 0

		if global_position.x > start_position.x + patrol_distance:
			direction = -1
		elif global_position.x < start_position.x - patrol_distance:
			direction = 1

	# Apply gravity
	if not is_on_floor():
		velocity.y -= 9.8 * delta

	move_and_slide()

func _on_detection_area_body_entered(body):
	if body.name == "Player":
		player = body
		is_chasing = true
		print("ENTERED:", body.name)

func _on_detection_area_body_exited(body):
	if body.name == "Player":
		player = null
		is_chasing = false

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_kill_area_body_entered(body: Node3D) -> void:
	if body.name == "Player":
		print("Player hit!")
		var ui = get_tree().get_current_scene().get_node("CanvasLayer/FailLabel")
		ui.visible = true
		$FailSound.play()
		await get_tree().create_timer(1.5).timeout
		get_tree().reload_current_scene()
