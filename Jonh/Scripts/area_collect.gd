extends Node3D

var gameManager = preload("res://Jonh/Scenes/GAMEMANAGER.gd")

var isOccuped

# Called when the node enters the scene tree for the first time.
func _ready():
	isOccuped = false
	pass # Replace with function body.
	
func _EnterColletArea():
	isOccuped = true

func _ExitColletArea():
	isOccuped = false
