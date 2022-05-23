extends Node

var movement_body
var animation_player
var target = 0
export var is_static = false

func _ready():
	movement_body = get_node(".")
	animation_player = get_node("AnimationPlayer")

# warning-ignore:unused_argument
func _process(delta):
	if is_static == false:
		if movement_body.position.x < target:
			movement_body.position.x += 5
		else:
			stop()

func move():
	set_static(false)
	if(target < (get_viewport().get_visible_rect().size[0] - 200)):
		run()
		movement_body.position.x = target
		target += 100
	else:
		run()
		movement_body.position.x = target
		target += 100

func stop():
	animation_player.play("Idle")

func run():
	animation_player.play("Run")

func change_sprite(path: Resource):
	get_node(".").set_texture(path)

func set_static(value:bool):
	is_static = value
	
func freeze():
	set_static(true)
	animation_player.play("Static")
