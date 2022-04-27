extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var horse = get_node("Horse")
	
	for i in range(3):
		var button1 = Button.new()
		add_child(button1)
		button1.set_position(Vector2(i*400,500))
		button1.set_size(Vector2(150,120))
		
		button1.connect("pressed", horse, "move")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
