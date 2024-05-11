extends Node2D

func _on_exit_to_character_pressed():
	get_tree().change_scene_to_file("res://scenes/character_seletion.tscn")
	Game.end_game()

func _on_exit_menu_pressed():
	%menu.visible = false
	%UIManager.visible = true

func _on_texture_button_pressed():
	if Global.bgm:
		BgMusic.stop_bgm()
		Global.bgm = false
	else:
		BgMusic.play_bgm()
		Global.bgm = true
