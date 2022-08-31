extends Control


# Export variables
export(NodePath) onready var dialogue_text = get_node(dialogue_text) as Label
export(NodePath) onready var avatar = get_node(avatar) as TextureRect

export(Resource) onready var current_dialogue=current_dialogue as Dialogue
export(Resource) var runtime_data=runtime_data as RuntimeData

# Onready variables

# Normal variables
var current_slide_index:int=0


func _ready() -> void:
	avatar.texture=current_dialogue.avatar_texture
	show_slide()
	
	GameEvents.connect("dialog_initiated", self, "on_dialog_initiated")


func _input(event: InputEvent) -> void:
	if(Input.is_action_just_pressed("advance_slide")):
		if(current_slide_index < current_dialogue.dialogue_slides.size() - 1):
			current_slide_index+=1
			show_slide()
		else:
			GameEvents.emit_signal("dialog_finished")
		

# A function for showing slide
func show_slide() -> void:
	dialogue_text.text = current_dialogue.dialogue_slides[current_slide_index]


# The function called when there is dialogue initiated
func on_dialog_initiated(dialogue: Dialogue) -> void:
	runtime_data.current_gameplay_state = Enums.GameplayState.IN_DIALOG
	current_dialogue=dialogue
	current_slide_index=0
	avatar.texture=dialogue.avatar_texture
	show_slide()
	self.visible=true
	

func on_dialog_finished() -> void:
	runtime_data.current_gameplay_state=Enums.GameplayState.FREEWALK
	self.visible=false
