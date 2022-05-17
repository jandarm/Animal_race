extends Node

var movement_body
var animation_player
var target = 0

func _ready():
	movement_body = get_node(".")
	animation_player = get_node("AnimationPlayer")

func _process(delta):
	if movement_body.position.x < target:
		movement_body.position.x += 5
	else:
		stop()
	pass

func move():
	if(target < (get_viewport().get_visible_rect().size[0] - 200)):
		run()
		movement_body.position.x = target
		target += 100
	else:
		run()
		movement_body.position.x = target
		target += 100
		print("finish")

func stop():
	animation_player.play("Idle")

func run():
	animation_player.play("Run")

func change_sprite(path: Resource):
	get_node(".").set_texture(path)

