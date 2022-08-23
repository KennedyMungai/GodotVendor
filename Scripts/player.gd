extends KinematicBody

func _ready() -> void:
	pass;
	
func _input(event: InputEvent) -> void:
	var mouse_motion = event as InputEventMouseMotion;
	
	if(mouse_motion):
		rotation_degrees.y += mouse_motion.relative.x;
