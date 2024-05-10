extends Node2D


func _on_black_cat_pressed():
	Global.character = "black_cat"
	get_tree().change_scene_to_file("res://game.tscn")


func _on_orange_cat_pressed():
	Global.character = "orange_cat"
	get_tree().change_scene_to_file("res://game.tscn")


func _on_white_cat_pressed():
	Global.character = "white_cat"
	get_tree().change_scene_to_file("res://game.tscn")
