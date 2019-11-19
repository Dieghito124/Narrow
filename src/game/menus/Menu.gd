extends VBoxContainer

onready var play_btn = $PlayBtn
onready var world_btn = $WorldBtn
onready var credits_btn = $CreditsBtn

func _ready() -> void:
	play_btn.connect("pressed", self, "_on_PlayBtn_pressed")
	world_btn.connect("pressed", self, "_on_WorldBtn_pressed")
	credits_btn.connect("pressed", self, "_on_CreditsBtn_pressed")

func _on_PlayBtn_pressed() -> void:
	hide()

func _on_WorldBtn_pressed() -> void:
	hide()
	
func _on_CreditsBtn_pressed() -> void:
	pass