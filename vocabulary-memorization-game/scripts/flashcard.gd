extends Panel
class_name Flashcard

## flashcard.gd

@onready var answer_label: Label = $CenterContainer/VBoxContainer/AnswerLabel
@onready var label_hint: Label = %LabelHint
@onready var image: TextureRect = %Image


var hint_lines: PackedStringArray
var current_hint : int = 0


func show_card(card: CardData):
	#print("RAW HINT: ")
	#print(card.hint_lines)
	#
	#print("SPLIT RESULT: ")
	#print(hint_lines)
	#print("SIZE: ", hint_lines.size())
	
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
	if letter == "Backspace":
		backspace_word()
		return
	answer_label.text += letter


func get_answer_text() -> String:
	return answer_label.text


func check_answer(card: CardData) -> bool:
	var input = answer_label.text.strip_edges().to_lower()
	var correct = card.answer.strip_edges().to_lower()
	
	if input == correct:
		return true
	else:
		return false


func backspace_word():
	var text = answer_label.text.strip_edges()
	
	if text == "":
		return
	
	var words = text.split("", false)
	
	if words.size() <= 1:
		# only one word left
		answer_label.text = ""
	else:
		words.remove_at(words.size() - 1)
		answer_label.text = "".join(words)
