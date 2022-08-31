extends Spatial

class_name Food

var spin_speed:float=180


func _ready() -> void:
	GameEvents.connect("food_moused_over", self, "on_mouse_entered")
	GameEvents.connect("food_moused_out", self, "on_moused_out")
	
	
func _process(delta: float) -> void:
	if($SpotLight.visible):
		self.rotation_degrees.y+=spin_speed*delta


# Function gets called when a mouse hovers over it
func on_mouse_entered(food_item: Food) -> void:
	if(food_item == self):
		$SpotLight.visible = true


# Function get called when the mouse stops hovering ove it
func on_mouse_out() -> void:
	$SpotLight.visible=false
