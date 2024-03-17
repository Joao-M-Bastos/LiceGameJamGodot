extends Node3D
class_name GameManager

static var blood = 100
var bloodText

# Called when the node enters the scene tree for the first time.
func _ready():
	bloodText = %BloodLabel
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

static func GetBlood(value):
	blood+=value
	#bloodText = 
	pass
