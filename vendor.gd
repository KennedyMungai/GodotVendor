extends Spatial


onready var label:Label3D=$Label3D


func _ready() -> void:
	label.text=name
