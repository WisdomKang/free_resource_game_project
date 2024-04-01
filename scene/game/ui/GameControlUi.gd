extends Control

var isPanelOpen : bool = false

func _on_texture_button_pressed():
	var animation_player : AnimationPlayer  = $AnimationPlayer
	
	if isPanelOpen:
		animation_player.play("open_control_panel")
	else :
		animation_player.play("close_control_panel")
		
	isPanelOpen = !isPanelOpen
