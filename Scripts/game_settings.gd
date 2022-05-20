extends Node

var blinds

func _ready():
	blinds = $GridCurtain.get_children()
	open_blinds($TeamNumberBtn.get_selected_id())

func _on_TeamNumberBtn_item_selected(index):
	GameManager.team_count = $TeamNumberBtn.get_item_text(index)
	open_blinds(index+2)

func _on_SpinBox_value_changed(value):
	GameManager.steps_to_win = value

func open_blinds(amount):
	for element in blinds:
		if amount > 0:
			element.hide()
		else:
			element.show()
		amount -= 1
