extends Button

var presionado:bool = false

func _on_pressed() -> void:
	if presionado == false:
		$"../../PanelContainer".show()
		presionado = true
	else:
		$"../../PanelContainer".hide()
		presionado = false
