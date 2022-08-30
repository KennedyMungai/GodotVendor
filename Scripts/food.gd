extends Spatial

class_name Food


func _ready() -> void:
	GameEvents.connect("food_moused_over", self, "on_mouse_entered")


func on_mouse_entered(food_item: Food) -> void:
	if(food_item == self):
		$SpotLight.visible = true
