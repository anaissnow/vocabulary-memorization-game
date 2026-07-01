extends Node2D
## test_level.gd


@onready var card_front: Panel = $CanvasLayer/CardFront
@onready var keyboard: GridContainer = $CanvasLayer/Keyboard

@export var cards: Array[CardData]


func _ready() -> void:
	keyboard.key_pressed.connect(card_front.append_letter)
	var card = cards.pick_random()
	var image = card_front.get_node("%TextureRect")
	print(card_front.get_answer_text)
	image.texture = card.image

func _on_reset_pressed() -> void:
	get_tree().reload_current_scene()
