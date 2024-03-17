extends Node3D
class_name GameManager

static var blood = 100
static var bloodText

# Called when the node enters the scene tree for the first time.
func _ready():
	bloodText = get_node("Camera3D/BloodLabel")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

static func GetBlood(value):
	blood+=int(value)
	bloodText.text = str(blood)
	pass
