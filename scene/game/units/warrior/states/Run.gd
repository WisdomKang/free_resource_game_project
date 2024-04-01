extends WarriorState

var animation_player : AnimationPlayer

func handle_input( _event : InputEvent ) -> void:
	pass
	
func update(_delta : float) -> void :
	# sprite flip_h by Vector.x
	var sprite : Sprite2D = $"../../Sprite2D"
	if owner.velocity.x < 0 :
		sprite.set_flip_h(true)
	else :
		sprite.set_flip_h(false)
		
func physics_update(_delta: float ) -> void :
	if owner.velocity == Vector2.ZERO :
		state_machine.transition_to( states[IDLE])
	
func enter( _msg := {} ) -> void:
	animation_player = $"../../AnimationPlayer"
	animation_player.play("run")
	
	
func exit() -> void:
	pass
