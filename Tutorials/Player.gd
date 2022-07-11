extends KinematicBody2D

export(int) var walk_speed = 200
export(int) var gravity = 600
export(int) var jump_force = 500

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += gravity * delta
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -walk_speed
	if Input.is_action_pressed("ui_right"):
		velocity.x = walk_speed
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
	
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -jump_force
	
	velocity = move_and_slide(velocity, Vector2.UP)
