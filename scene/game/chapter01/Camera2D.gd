extends Camera2D

var camera_speed : int = 20

var starting_position = Vector2.ZERO
var mouse_starting_position = Vector2.ZERO
var is_dragging = false

var position_limit_x
var position_limit_y

func _ready():
	position_limit_x =  limit_right - get_viewport_rect().size.x 
	position_limit_y = limit_bottom - get_viewport_rect().size.y
	
func _input(event):
	# Mouse click and drag moving
	if event is InputEventMouseButton:
		if event.is_pressed():
			starting_position = position
			mouse_starting_position = event.position
			is_dragging = true
		else: 
			is_dragging = false
			
	if event is InputEventMouseMotion and is_dragging:
		var new_position = starting_position - zoom * (event.position - mouse_starting_position)
		new_position.x = clamp(new_position.x, limit_left, position_limit_x)
		new_position.y = clamp(new_position.y, limit_top, position_limit_y)
		position = new_position
		
func _process(delta):
	# Key Input moving camera
	var direction = Input.get_vector("camera_left", "camera_right", "camera_up", "camera_down")
	if direction.length() > 0 :
		var new_position = position + ( direction * camera_speed )
		new_position.x = clamp(new_position.x, limit_left, position_limit_x)
		new_position.y = clamp(new_position.y, limit_top, position_limit_y)
		position = new_position
		pass

func _physics_process(delta):
	pass
