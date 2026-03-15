extends Area3D

func _on_body_entered(body):
	print("Something entered:", body.name)

	if body is CharacterBody3D:
		get_tree().change_scene_to_file("res://scenes/level_2.tscn")
