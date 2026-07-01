extends Control
## main_menu.gd

@onready var play_button: Button = $CanvasLayer/MarginContainer/VBoxContainer/PlayButton
@onready var settings_button: Button = $CanvasLayer/MarginContainer/VBoxContainer/SettingsButton
@onready var quit_button: Button = $CanvasLayer/MarginContainer/VBoxContainer/QuitButton
var level = preload("uid://cauu7jhe00wfc")

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_packed(level)


func _on_settings_button_pressed() -> void:
	pass # Replace with function body.


func _on_quit_button_pressed() -> void:
	get_tree().quit()
