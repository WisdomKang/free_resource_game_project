extends TorchGoblinState

var charactor : TorchGoblin
var sprite : Sprite2D
var animation_player : AnimationPlayer 

func _ready(): 
	sprite = $"../../Sprite2D"
	charactor = owner as TorchGoblin
	animation_player = $"../../AnimationPlayer"

func handle_input( _event : InputEvent ) -> void:
	pass
	
func update(_delta : float) -> void :
	if charactor.detected_enermy != null:
		state_machine.transition_to("Run")
		
func physics_update(_delta: float ) -> void :
	pass
	
func enter( _msg := {} ) -> void:
	pass
	
func exit() -> void:
	pass
