extends KinematicBody2D


func get_input():
	# Detect up/down/left/right keystate and only move when pressed.
	velocity = Vector2()
	if Input.is_action_pressed('ui_right') or Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed('ui_left') or Input.is_action_pressed('move_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	velocity = velocity.normalized() * speed
