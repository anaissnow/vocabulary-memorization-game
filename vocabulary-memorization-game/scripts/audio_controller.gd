extends Node2D


@onready var button: AudioStreamPlayer = $Button
@onready var correct: AudioStreamPlayer = $Correct
@onready var wrong: AudioStreamPlayer = $Wrong


func play_button():
	button.play()

func play_correct():
	correct.play()

func play_wrong():
	wrong.play()
