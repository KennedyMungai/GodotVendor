extends Control


export(NodePath) var _dialogue_text_path


func _ready() -> void:
	var dialogue_text: Label = get_node(_dialogue_text_path)
	dialogue_text.text = "Welcome to the game. Dumb motherfucker!!!!"
	pass
