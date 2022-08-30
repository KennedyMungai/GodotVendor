extends RayCast


func _input(event: InputEvent) -> void:
	var collided_area: Area = get_collider()
	
	if(collided_area):
		if((collided_area.get_parent()) is Food):
			print("Miracle")
			collided_area.get_parent().on_mouse_entered()
			GameEvents.emit_signal("food_moused_over", collided_area.get_parent())
