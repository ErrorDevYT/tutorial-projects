extends Node2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_Win_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Level.tscn")
