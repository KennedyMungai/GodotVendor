extends Spatial

class_name Food


func _ready() -> void:
	GameEvents.connect("food_moused_over", self, "on_mouse_entered")


func on_mouse_entered() -> void:
	print("Mouse entered")
