class_name Idle
extends WarriorState

var animation_player : AnimationPlayer

func handle_input( _event : InputEvent ) -> void:
	pass
	
func update(_delta : float) -> void :
	if owner.velocity.length() != 0 :
		state_machine.transition_to( states[RUN] )
	
func physics_update(_delta: float ) -> void :
	pass
	
func enter( _msg := {} ) -> void:
	animation_player = $"../../AnimationPlayer"
	animation_player.play("idle")
	
func exit() -> void:
	pass
