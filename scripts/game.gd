extends Node2D

var current_scene = "game"
var change_scene = false
var scene_path = ""



func _on_exit_pressed():
	get_tree().change_scene_to_file("res://scenes/character_seletion.tscn")
