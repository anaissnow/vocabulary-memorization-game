extends Node2D
## test_level.gd


@onready var card_front: Flashcard = $CanvasLayer/CardFront
@onready var keyboard: GridContainer = $CanvasLayer/Keyboard
@onready var label_hint: Label = $CanvasLayer/LabelHint

@export var cards: Array[CardData]
#@onready var card = cards.pick_random()
@onready var image = card_front.get_node("%Image")


func _ready() -> void:
	keyboard.key_pressed.connect(card_front.append_letter)
	print(card_front.get_answer_text)
	#image.texture = card.image

func _on_reset_pressed() -> void:
	load_new_card()


func _on_hint_button_pressed() -> void:
	card_front.reveal_next_hint()


func load_new_card():
	var card = cards.pick_random()
	card_front.show_card(card)
