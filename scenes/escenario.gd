extends Node3D


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	pass


func _on_audio_stream_player_finished() -> void:
	$AudioStreamPlayer.play()
