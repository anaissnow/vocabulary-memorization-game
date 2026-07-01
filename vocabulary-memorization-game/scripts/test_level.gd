extends Node2D
## test_level.gd


@onready var card_front: Flashcard = $CanvasLayer/CardFront
@onready var keyboard: GridContainer = $CanvasLayer/Keyboard
@onready var label_hint: Label = $CanvasLayer/LabelHint

@export var cards: Array[CardData]
#@onready var card = cards.pick_random()
@onready var image = card_front.get_node("%Image")
var current_card : CardData


func _ready() -> void:
	keyboard.key_pressed.connect(card_front.append_letter)
	print(card_front.get_answer_text())
	#image.texture = card.image

func _on_reset_pressed() -> void:
	AudioController.play_button2()
	card_front.answer_label.text = ""
	load_new_card()


func _on_hint_button_pressed() -> void:
	AudioController.play_button2()
	card_front.reveal_next_hint()


func load_new_card():
	current_card = cards.pick_random()
	card_front.show_card(current_card)


func _on_submit_button_pressed() -> void:
	AudioController.play_button2()
	await get_tree().create_timer(1.0).timeout
	if card_front.check_answer(current_card):
		AudioController.play_correct()
		print("Correct!")
	else:
		AudioController.play_wrong()
		print("Wrong!")
	card_front.answer_label.text = ""
	load_new_card()


func _on_backspace_pressed() -> void:
	AudioController.play_button1()
	card_front.backspace_word()
