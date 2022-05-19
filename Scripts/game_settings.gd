extends Node

var blinds

func _ready():
	blinds = $GridCurtain.get_children()
	blinds[0].hide()
	blinds[1].hide()
	pass

func _on_TeamNumberBtn_item_selected(index):
	blinds[index].hide()
	GameManager.team_count = $TeamNumberBtn.get_item_text(index)

func _on_SpinBox_value_changed(value):
	GameManager.steps_to_win = value
