extends GridContainer
## keyboard.gd


@onready var top_row: HBoxContainer = $TopRow
@onready var middle_row: HBoxContainer = $MiddleRow
@onready var bottom_row: HBoxContainer = $BottomRow


signal key_pressed(letter: String)
signal backspace_word_pressed


func _ready() -> void:
	_setup_row(top_row)
	_setup_row(middle_row)
	_setup_row(bottom_row)


func _on_letter_pressed(letter: String):
	AudioController.play_button()
	key_pressed.emit(letter)


func _setup_row(row: HBoxContainer) -> void:
	for button in row.get_children():
		if button is Button:
			match button.text:
				"Backspace":
					button.pressed.connect(_on_backspace_pressed)
				_:
					button.pressed.connect(_on_letter_pressed.bind(button.text))

func _on_backspace_pressed():
	AudioController.play_button()
	backspace_word_pressed.emit()
