extends Timer



func _on_timeout():
	var animationPlayer : AnimationPlayer = $"../AnimationPlayer"
	
	animationPlayer.play("run")
