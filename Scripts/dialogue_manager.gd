extends Control


# Export variables
export(NodePath) var _dialogue_text_path

# Normal variables
var dialogue_text:Label


func _ready() -> void:
	dialogue_text = get_node(_dialogue_text_path)
	dialogue_text.text = "Welcome to the game. Dumb motherfucker!!!!"
	pass
