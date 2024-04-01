class_name Warrior

extends CharacterBody2D


@export var speed : int = 200
@export var health_point : int
@export var offence_power : int
@export var attack_speed : int

func _physics_process(delta):
	var direction = Input.get_vector( "ui_left" ,"ui_right", "ui_up", "ui_down")
	velocity = direction* speed
	move_and_slide()

func _input(event):
	pass

