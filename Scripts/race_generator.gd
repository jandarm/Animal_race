extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var horse = preload("res://Assets/Animals/Лошадь_анимация.png")
var deer = preload("res://Assets/Animals/Олень_анимация.png")
var camel = preload("res://Assets/Animals/Верблюд_анимация.png")
var bear = preload("res://Assets/Animals/Медведь_анимация.png")
var frog = preload("res://Assets/Animals/Лягушка_анимация.png")
var turtle = preload("res://Assets/Animals/Черепаха_анимация.png")
var animal_scene = preload("res://Scenes/Animal_scene.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var zoo = []
	zoo.push_back(horse)
	zoo.push_back(deer)
	zoo.push_back(camel)
	zoo.push_back(bear)
	zoo.push_back(frog)
	zoo.push_back(turtle)
	
	var window = OS.window_size
	
	var x_spacing = (window.x - zoo.size() * 150)/(zoo.size()+1)
	var y_spacing = ((window.y - 50) - zoo.size() * 5)/(zoo.size()+1)
	var i = 0
	var scaling = 1
	
	for animal in zoo:
		var new_button_x = scaling * x_spacing + 150 * (scaling - 1)
		var new_animal_y = y_spacing + 70 * (scaling - 1)
		
		var button = Button.new()
		button.set_position(Vector2(new_button_x,500))
		button.set_size(Vector2(150,120))
		add_child(button)
		
		var racer = animal_scene.instance()
		racer.change_sprite(zoo[i])
		racer.set_position(Vector2(0, new_animal_y))
		add_child(racer)
		
		
		button.connect("pressed", racer, "move")
		
		i += 1
		scaling += 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
