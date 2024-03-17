extends Node3D

var gameManager = preload("res://Jonh/Scenes/GAMEMANAGER.gd")

var growConstantValue = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	gameManager.GetBlood(-1)
	pass

func _physics_process(delta):
	get_node("MeshInstance3D").scale += Vector3(0,growConstantValue * delta,0)
	get_node("MeshInstance3D").position += Vector3(0,growConstantValue/2 * delta,0)
	
	pass
