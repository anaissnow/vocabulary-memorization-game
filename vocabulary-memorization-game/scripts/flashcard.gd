extends Panel

## flashcard.gd

@onready var answer_label: Label = $CenterContainer/VBoxContainer/AnswerLabel


func append_letter(letter: String):
	answer_label.text += letter


func get_answer_text() -> String:
	return answer_label.text
