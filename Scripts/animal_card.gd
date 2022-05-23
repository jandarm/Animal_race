extends Node

var animal_options = []
var camel = preload("res://Assets/Animals/Верблюд_анимация.png")
var horse = preload("res://Assets/Animals/Лошадь_анимация.png")
var frog = preload("res://Assets/Animals/Лягушка_анимация.png")
var bear = preload("res://Assets/Animals/Медведь_анимация.png")
var deer = preload("res://Assets/Animals/Олень_анимация.png")
var turtle = preload("res://Assets/Animals/Черепаха_анимация.png")

signal my_sprite_changed

func _ready():
	animal_options.append(camel)
	animal_options.append(horse)
	animal_options.append(frog)
	animal_options.append(bear)
	animal_options.append(deer)
	animal_options.append(turtle)
	
	$Animal_sprite.freeze()

func _on_OptionButton_item_selected(index):
	$Animal_sprite.change_sprite(animal_options[index])
	emit_signal("my_sprite_changed", self)

func hide_card():
	$Animal_sprite/AnimationPlayer.play("Static")
	$CardShadow.show()
	
func show_card():
	$Animal_sprite/AnimationPlayer.play("Idle")
	$CardShadow.hide()

func get_sprite():
	return $Animal_sprite.texture.resource_path
