extends Node3D

var collectCooldown = 0
var accumulatedBlood = 0
var isOnCollectArea

# Called when the node enters the scene tree for the first time.
func _ready():
	isOnCollectArea = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Input.is_action_just_pressed("UniversalInput")):
		destroyMineiro()
	if(isOnCollectArea and accumulatedBlood < 20):
		accumulatedBlood += delta
	pass

	
func destroyMineiro():
	GameManager.GetBlood(accumulatedBlood)
	print_debug("a")
	queue_free()
	pass
