extends Spatial


export(Resource) var dialogue=dialogue as Dialogue
	

func _on_dialogue_trigger_body_entered(body: Node) -> void:
	print("Body entered")
