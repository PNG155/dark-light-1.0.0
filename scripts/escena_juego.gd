extends Node3D

@onready var musica: AudioStreamPlayer = $AudioStreamPlayer

func _ready() -> void:
	musica.play()

func _on_audio_stream_player_finished() -> void:
	musica.play()
	print("esta tocando")
