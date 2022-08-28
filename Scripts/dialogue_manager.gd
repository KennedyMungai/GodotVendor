extends Control


# Export variables
export(NodePath) var _dialogue_text_path

# Onready variables
onready var dialogue_text:Label = get_node(_dialogue_text_path)


func _ready() -> void:
	dialogue_text.text = "Welcome to the game. Dumb motherfucker!!!!"
	pass
