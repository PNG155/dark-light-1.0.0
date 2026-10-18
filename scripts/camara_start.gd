extends Node3D


var sensibilidad:float = 0.002
var puede_mover_camara:bool = false
@onready var camara:Camera3D = $SubViewportContainer/SubViewport/CharacterBody3D/head/Camera3D
@onready var head:Node3D = $SubViewportContainer/SubViewport/CharacterBody3D/head

func _ready() -> void:
	puede_mover_camara = true

func _input(event) -> void: 
	mover_camara(event)

func mover_camara(event):
	if event is InputEventMouseMotion and puede_mover_camara:
		head.rotate_y(-event.relative.x * sensibilidad)
		camara.rotate_x(-event.relative.y * sensibilidad)
		camara.rotation.x = clamp(camara.rotation.x, deg_to_rad(-15), deg_to_rad(15))
		head.rotation.y = clamp(head.rotation.y, deg_to_rad(-15), deg_to_rad(15))
