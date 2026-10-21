extends Panel
## Level Menu

# --- Buttons ---
@onready var test_level_btn: Button = $VBoxContainer/TestLevelBtn
@onready var easy_level_btn: Button = $VBoxContainer/EasyLevelBtn
@onready var med_level_btn: Button = $VBoxContainer/MedLevelBtn
@onready var hard_level_btn: Button = $VBoxContainer/HardLevelBtn
@onready var back_btn: Button = $VBoxContainer/BackBtn

# --- Levels ---
@onready var test_level: PackedScene = preload("uid://cauu7jhe00wfc")
@onready var easy_level: PackedScene = preload("uid://bxnfylhqspcat")
@onready var medium_level: PackedScene = preload("uid://csssoir1gqr5r")
@onready var hard_level: PackedScene = preload("uid://dmmieqb4molyq")

func _ready() -> void:
	self.hide()


func _on_test_level_btn_pressed() -> void:
	AudioController.play_button1()
	get_tree().change_scene_to_packed(test_level)


func _on_easy_level_btn_pressed() -> void:
	AudioController.play_button1()
	get_tree().change_scene_to_packed(easy_level)


func _on_med_level_btn_pressed() -> void:
	AudioController.play_button1()
	get_tree().change_scene_to_packed(medium_level)


func _on_hard_level_btn_pressed() -> void:
	AudioController.play_button1()
	get_tree().change_scene_to_packed(hard_level)


func _on_back_btn_pressed() -> void:
	AudioController.play_button1()
	self.hide()
