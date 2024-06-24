extends Area2D

func _handle_body_entered(body):
	get_tree().change_scene_to_file("res://world2.tscn")

func _on_body_exited(body):
	call_deferred("_handle_body_entered", body) # Replace with function body.
