extends GridContainer
## keyboard.gd


signal key_pressed(letter: String)


func _ready() -> void:
	for button in get_children():
		if button is Button:
			button.pressed.connect(_on_letter_pressed.bind(button.text))


func _on_letter_pressed(letter: String):
	key_pressed.emit(letter)
