extends Node3D

##Pega outra cena
var minerLice = preload("res://Jonh/Scenes/testMiner.tscn")
var warriorLice = preload("res://Jonh/Scenes/test_warrior.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("TestInput_H")):
		var instance = minerLice.instantiate()
		add_child(instance)
		instance.position = get_node("GenerationPoint").position
	else: if(Input.is_action_just_pressed("TestInput_J")):
		var instance = warriorLice.instantiate()
		add_child(instance)
		instance.position = get_node("GenerationPoint").position
	
	pass
