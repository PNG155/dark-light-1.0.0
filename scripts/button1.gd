extends Button

var boton_usado:bool = false
@onready var animacion:AnimationPlayer = $"../../SubViewportContainer/SubViewport/CharacterBody3D/head/AnimationPlayer"


func _on_button_down() -> void:
	animacion.play("inicio")
	disabled = true
	$"..".hide()
	$"../../PanelContainer".hide()
	

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "inicio":
		await get_tree().create_timer(0.39).timeout
		get_tree().change_scene_to_file("res://scenes/escena juego.tscn")
