extends Node3D
var enemy = preload("res://Jonh/Scenes/test_enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var instance = enemy.instantiate()
	add_child(instance)
	instance.position = get_node("GenerationPoint").position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
