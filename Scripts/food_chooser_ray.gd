extends RayCast


func _input(event: InputEvent) -> void:
	var collided_area: Area = get_collider()
	
	if(collided_area):
		print(collided_area.name)
