extends Node2D


@onready var card_front: Panel = $CanvasLayer/CardFront

@export var cards: Array[CardData]


func _ready() -> void:
	var card = cards.pick_random()
	var image = card_front.get_node("%TextureRect")
	var label = card_front.get_node("%Label")
	label.text = "".join(card.hint_spelling)
	image = card.image

func _on_reset_pressed() -> void:
	get_tree().reload_current_scene()
