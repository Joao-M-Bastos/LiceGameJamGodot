extends Node3D

var minerLice = preload("res://Jonh/Scenes/mineiro_la_de_minas.tscn") 
var isOccuped


func _ready():
	isOccuped = false
	pass # Replace with function body.
	
func _EnterColletArea():
	isOccuped = true

func _ExitColletArea():
	isOccuped = false

func _on_interacted(interactor):
	if(!isOccuped):
		_EnterColletArea()
		_PutLice()	

func _PutLice():
	var instance = minerLice.instantiate()
	add_child(instance)
	instance.position = get_node("GenerationPoint").position
	pass
