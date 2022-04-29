extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movement_body
var animation_player
# Called when the node enters the scene tree for the first time.
var target = 0

func _ready():
	movement_body = get_node(".")
	animation_player = get_node("AnimationPlayer")
	pass # Replace with function body.

func _process(delta):
	if movement_body.position.x < target:
		movement_body.position.x += 5
	else:
		stop()
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func move():
	run()
	movement_body.position.x = target
	target += 100

func stop():
	animation_player.play("Idle")

func run():
	animation_player.play("Run")

func change_sprite(path: Resource):
	get_node(".").set_texture(path)
