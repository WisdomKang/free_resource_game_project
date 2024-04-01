extends WarriorState

var animation_player : AnimationPlayer

func handle_input( _event : InputEvent ) -> void:
	pass
	
func update(_delta : float) -> void :
	if !animation_player.is_playing():
		state_machine.transition_to("Idle")
	
func physics_update(_delta: float ) -> void :
	pass
	
func enter( _msg := {} ) -> void:
	animation_player = $"../../AnimationPlayer"
	animation_player.play("attack_side_01")
	
func exit() -> void:
	pass
