extends Resource
class_name CardData

@export var image: Texture2D
@export var answer: String

@export var hint_lines: PackedStringArray
@export var hint_category: String
@export var hint_spelling: Array[String]

@export var difficulty: int = 1
