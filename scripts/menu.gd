extends Node2D



func _on_exit_to_character_pressed():
	get_tree().change_scene_to_file("res://scenes/character_seletion.tscn")


func _on_exit_menu_pressed():
	%menu.visible = false
	%UIManager.visible = true
