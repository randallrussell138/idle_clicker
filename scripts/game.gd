extends Node2D

signal gained_coins(int)

var current_scene = "game"
var change_scene = false
var scene_path = ""
var coins = 0

func _ready():
	set_process_input(true)

func _on_exit_pressed():
	%menu.visible = true
	%UIManager.visible = false

func _input(event):
	if event.is_action_pressed("mouse_left_click"):
		coins += 1
		emit_signal("gained_coins", coins)
		print("Coins: ", coins)
