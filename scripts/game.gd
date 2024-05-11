extends Node2D

signal gained_coins(int)

var game_started = false


func _ready():
	set_process_input(true)

func _input(event):
	if event.is_action_pressed("mouse_left_click"):
		if game_started:  # Check if the game has started
			Global.coin += 1
			emit_signal("gained_coins", Global.coin)
			print("Coins: ", Global.coin)

# Function to start the game
func start_game():
	game_started = true

func _on_menu_button_pressed():
	%menu.visible = true
	%UIManager.visible = false

func end_game():
	game_started = false
