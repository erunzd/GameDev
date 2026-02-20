extends Camera3D

@export var target_path: NodePath
@export var follow_speed = 5.0
@export var offset = Vector3(0, 4, 8)

var target

func _ready():
	target = get_node(target_path)

func _process(delta):
	if target:
		var desired_position = target.global_transform.origin + offset
		global_transform.origin = global_transform.origin.lerp(desired_position, follow_speed * delta)
		look_at(target.global_transform.origin, Vector3.UP)
