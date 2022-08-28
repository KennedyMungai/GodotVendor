extends Control


export(NodePath) var _dialogue_text


func _ready() -> void:
	_dialogue_text = _dialogue_text as Label
	_dialogue_text.text="Testing initial text"
