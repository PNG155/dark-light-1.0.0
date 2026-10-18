extends Label

var puede_escribir:bool = false

func _ready() -> void:
	visible_ratio = 0.0
	await get_tree().create_timer(0.2).timeout
	puede_escribir = true

func _process(delta):
	if visible_ratio < 1.0 and puede_escribir:
		visible_ratio += delta * 0.5


func _on_button_2_pressed() -> void:
	visible_ratio = 0.0
