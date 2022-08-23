extends KinematicBody

func _ready() -> void:
	pass;
	
func _input(event: InputEvent) -> void:
	var mouse_motion = event as InputEventMouseMotion;
	
	if(mouse_motion):
		print("Mouse motion");
