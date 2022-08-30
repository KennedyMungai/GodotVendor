extends RayCast

var is_mousing_over:bool=false


func _input(event: InputEvent) -> void:
	var collided_area: Area = get_collider()
	
	if(collided_area):
		if((collided_area.get_parent()) is Food):
			if not is_mousing_over:
				is_mousing_over=true
			collided_area.get_parent().on_mouse_entered(collided_area.get_parent())
			GameEvents.emit_signal("food_moused_over", collided_area.get_parent())
