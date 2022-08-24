extends KinematicBody

onready var camera: Camera = get_node("Camera")

export var _mouse_sensitivity: float = 0.05

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event: InputEvent) -> void:
	var mouse_motion = event as InputEventMouseMotion
	
	if(mouse_motion):
		camera.rotation_degrees.y -= mouse_motion.relative.x * _mouse_sensitivity
		camera.rotation_degrees.x -= mouse_motion.relative.y * _mouse_sensitivity
