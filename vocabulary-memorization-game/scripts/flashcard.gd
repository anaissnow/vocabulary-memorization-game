extends Panel
class_name Flashcard

## flashcard.gd

@onready var answer_label: Label = $CenterContainer/VBoxContainer/AnswerLabel
@onready var label_hint: Label = %LabelHint
@onready var image: TextureRect = %Image


var hint_lines: PackedStringArray
var current_hint : int = 0


func show_card(card: CardData):
	print("RAW HINT: ")
	print(card.hint_lines)
	
	print("SPLIT RESULT: ")
	print(hint_lines)
	print("SIZE: ", hint_lines.size())
	
	hint_lines = card.hint_lines
	current_hint = 0
	image.texture = card.image
	label_hint.text = ""


func reveal_next_hint():
	if current_hint < hint_lines.size():
		if label_hint.text != "":
			label_hint.text += "\n"
		
		label_hint.text += hint_lines[current_hint]
		current_hint += 1


func append_letter(letter: String):
	answer_label.text += letter


func get_answer_text() -> String:
	return answer_label.text
