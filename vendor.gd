extends Spatial


onready var label:Label3D=$vendor_label


func _ready() -> void:
	label.text=name
