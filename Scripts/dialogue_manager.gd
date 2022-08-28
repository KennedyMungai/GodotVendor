extends Control


# Export variables
export(NodePath) onready var dialogue_text = get_node(dialogue_text) as Label
export(NodePath) onready var avatar = get_node(avatar) as TextureRect
export(Resource) onready var current_dialogue=current_dialogue as Dialogue

# Onready variables


func _ready() -> void:
	dialogue_text.text = current_dialogue.dialogue_slides[0]
#	avatar.texture=
