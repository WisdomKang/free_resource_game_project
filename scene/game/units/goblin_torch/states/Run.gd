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
	pass
	
func physics_update(_delta: float ) -> void :
	charactor.velocity = charactor.position.direction_to(charactor.detected_enermy.position) * charactor.move_speed
	
	if charactor.velocity.x > 0 :
		sprite.flip_h = false
	elif charactor.velocity.x < 0 :
		sprite.flip_h = true
		
	
func enter( _msg := {} ) -> void:
	animation_player.play("run")
	pass
	
func exit() -> void:
	pass
