extends Node2D

var character = ""

func hard_reset(color):
	Global.character = color + "_cat"
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	Global.coin = 0
	Game.start_game()
	
func _on_black_cat_pressed():
	hard_reset("black")

func _on_orange_cat_pressed():
	hard_reset("orange")

func _on_white_cat_pressed():
	hard_reset("white")

func _on_texture_button_pressed():
	get_tree().quit()

func _on_mute_bpg_pressed():
	if Global.bgm:
		BgMusic.stop_bgm()
		Global.bgm = false
	else:
		BgMusic.play_bgm()
		Global.bgm = true

