extends GridContainer
## keyboard.gd


signal key_pressed(letter: String)
signal backspace_word_pressed


func _ready() -> void:
	for button in get_children():
		if button is Button:
			button.pressed.connect(_on_letter_pressed.bind(button.text))
		button.pressed.connect(func(): backspace_word_pressed.emit())

func _on_letter_pressed(letter: String):
	AudioController.play_button()
	key_pressed.emit(letter)
