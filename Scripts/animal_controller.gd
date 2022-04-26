extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movement_body
var animation_player
# Called when the node enters the scene tree for the first time.
func _ready():
	movement_body = get_node("Animal_sprite")
	animation_player = get_node("AnimationPlayer")
	pass # Replace with function body.

func _process(delta):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func move():
	animation_player.play("Run")
	movement_body.position.x += 50
	stop()

func stop():
	animation_player.play("Idle")
