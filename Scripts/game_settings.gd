extends Node


func _ready():
#	$OptionButton.theme = Theme.new()
#	$OptionButton.theme.default_font = DynamicFont.new()
#	$OptionButton.theme.default_font.font_data = load("res://Assets/Font.tres")
	pass

func _on_TeamNumberBtn_item_selected(index):
	GameManager.team_count = $TeamNumberBtn.get_item_text(index)

func _on_SpinBox_value_changed(value):
	GameManager.steps_to_win = value

