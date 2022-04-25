extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movement_body
# Called when the node enters the scene tree for the first time.
func _ready():
	movement_body = get_node("Animal_sprite")
	pass # Replace with function body.

func _process(delta):
	movement_body.position.x += 5
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
