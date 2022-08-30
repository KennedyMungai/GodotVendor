extends Spatial

class_name Food


func _ready() -> void:
	GameEvents.connect("food_moused_over", self, "on_mouse_entered")


# Function gets called when a mouse hovers over it
func on_mouse_entered(food_item: Food) -> void:
	if(food_item == self):
		$SpotLight.visible = true


# Function get called when the mouse stops hovering ove it
func on_mouse_out() -> void:
	$SpotLight.visible=false
