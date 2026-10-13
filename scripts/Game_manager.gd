extends Node




#pantalla completa y ocultar raton

func _process(_delta):
	ocultar_raton()
	maximizar_pantalla()

func maximizar_pantalla():
	if Input.is_action_just_pressed("y"):
		if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		else:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
func ocultar_raton():
	if Input.is_action_just_pressed("q"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
