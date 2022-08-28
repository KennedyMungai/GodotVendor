extends Control


# Export variables
export(NodePath) onready var dialogue_text = get_node(dialogue_text) as Label
export(NodePath) onready var avatar = get_node(avatar) as TextureRect

# Onready variables


func _ready() -> void:
	dialogue_text.text = "Welcome to the game. Dumb motherfucker!!!!"
	pass
