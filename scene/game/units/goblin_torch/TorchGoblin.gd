class_name TorchGoblin

extends CharacterBody2D

@export var move_speed : int = 50
@export var state_machine : StateMachine = null

var detected_enermy : Node2D = null

func _physics_process(delta):
	move_and_slide()

func _on_enemy_detect_area_body_entered(body):
	if body is Warrior :
		print("Goblin find enermy!")
		detected_enermy = body





func _on_enemy_detect_area_body_exited(body):
	pass # Replace with function body.
