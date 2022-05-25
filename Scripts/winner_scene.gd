extends Node

func _ready():
	var texture_collection = {
		"res://Assets/Animals/Верблюд_анимация.png": "res://Assets/Animals/Верблюд_частицы.png",
		"res://Assets/Animals/Лошадь_анимация.png": "res://Assets/Animals/Лошадь_частицы.png",
		"res://Assets/Animals/Лягушка_анимация.png": "res://Assets/Animals/Лягушка_частицы.png",
		"res://Assets/Animals/Медведь_анимация.png": "res://Assets/Animals/Медведь_частицы.png",
		"res://Assets/Animals/Олень_анимация.png": "res://Assets/Animals/Олень_частицы.png",
		"res://Assets/Animals/Черепаха_анимация.png": "res://Assets/Animals/Черепаха_частицы.png",
	}
	
	$Particles2D.texture = load(texture_collection[GameManager.winner])
