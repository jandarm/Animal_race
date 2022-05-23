extends Node

var blinds

func _ready():
	blinds = $GridCards.get_children()
	open_blinds($TeamNumberBtn.get_selected_id())
	for element in blinds:
		element.connect("my_sprite_changed", $".", "rewrite_manager_sprites")

func _on_TeamNumberBtn_item_selected(index):
	GameManager.team_count = $TeamNumberBtn.get_item_text(index)
	open_blinds(index+2)

func _on_SpinBox_value_changed(value):
	GameManager.steps_to_win = value

func open_blinds(amount):
	GameManager.teams = []
	for element in blinds:
		if amount > 0:
			GameManager.teams.push_back(element.get_sprite())
			element.show_card()
		else:
			element.hide_card()
		amount -= 1

func rewrite_manager_sprites(this_card):
	var card_index = blinds.find(this_card)
	GameManager.teams[card_index] = this_card.get_sprite()
