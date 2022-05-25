extends Node

var team_count
var steps_to_win
var teams = []
var winner = "res://Assets/Animals/Верблюд_анимация.png"

func _ready():
	team_count = 2
	steps_to_win = 3
	teams.push_back("res://Assets/Animals/Лошадь_анимация.png")
	teams.push_back("res://Assets/Animals/Олень_анимация.png")
