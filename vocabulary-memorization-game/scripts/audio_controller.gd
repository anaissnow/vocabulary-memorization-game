extends Node2D


@onready var button1: AudioStreamPlayer = $Button1
@onready var button2: AudioStreamPlayer = $Button2
@onready var button3: AudioStreamPlayer = $Button3
@onready var correct: AudioStreamPlayer = $Correct
@onready var wrong: AudioStreamPlayer = $Wrong


func play_button1():
	button1.play()


func play_button2():
	button2.play()


func play_button3():
	button3.play()


func play_correct():
	correct.play()

func play_wrong():
	wrong.play()
