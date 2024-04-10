class_name Warrior

extends UintBase

func _physics_process(delta):
	var direction = Input.get_vector( "ui_left" ,"ui_right", "ui_up", "ui_down")
	velocity = direction * move_speed
	move_and_slide()

func _input(event):
	pass

