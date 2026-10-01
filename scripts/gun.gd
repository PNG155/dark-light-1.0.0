extends Node3D

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("click"):
		$CanvasLayer/Control/Sprite2D/AnimationPlayer.play("new_animation")
