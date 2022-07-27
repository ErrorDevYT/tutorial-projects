extends Node

export(bool) var can_pause: bool = true

func _process(delta):
	if Input.is_action_just_pressed("pause_screen"):
		if !get_tree().paused:
			pause_screen()
		else:
			play_screen()

func pause_screen():
	if can_pause:
		get_tree().set_deferred("paused", true)

func play_screen():
	if can_pause:
		get_tree().set_deferred("paused", false)
