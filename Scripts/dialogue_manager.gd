extends Control


# Export variables
export(NodePath) onready var dialogue_text = get_node(dialogue_text) as Label
export(NodePath) onready var avatar = get_node(avatar) as TextureRect
export(Resource) onready var current_dialogue=current_dialogue as Dialogue

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
			self.visible=false
		

# A function for showing slide
func show_slide() -> void:
	dialogue_text.text = current_dialogue.dialogue_slides[current_slide_index]


# The function called when there is dialogue initiated
func on_dialog_initiated(dialogue: Dialogue) -> void:
	current_dialogue=dialogue
	current_slide_index=05
	show_slide()
