extends Area3D

func _on_body_entered(body):
	if body.name == "Player":
		var ui = get_tree().get_current_scene().get_node("CanvasLayer/FailLabel")
		ui.visible = true
		$FailSound.play()
		await get_tree().create_timer(0.75).timeout
		get_tree().reload_current_scene()
