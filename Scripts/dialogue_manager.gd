extends Control


export(NodePath) var _dialogue_text_path


func _ready() -> void:
	var dialogue_text: Label = get_node(_dialogue_text_path)
	pass
