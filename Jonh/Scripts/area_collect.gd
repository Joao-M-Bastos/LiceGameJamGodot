extends Node3D

var isOccuped

# Called when the node enters the scene tree for the first time.
func _ready():
	isOccuped = false
	pass # Replace with function body.
	
func _EnterColletArea():
	isOccuped = true

func _ExitColletArea():
	isOccuped = false
	
#func _PutLice(mineiro)

