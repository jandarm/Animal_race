extends Node

export(String, FILE) var destination

func _ready():
	pass

func _on_Button_pressed():
	if destination:
		get_tree().change_scene(destination)
	else:
		get_tree().quit()
	pass
