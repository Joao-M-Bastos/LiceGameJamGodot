extends Node3D

var growConstantValue = 0.2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scale += Vector3(0,growConstantValue * delta,0)
	get_node("MeshInstance3D").translate(Vector3(0,growConstantValue/4 * delta,0))
	pass
