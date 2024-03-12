extends RigidBody3D

var speed = 2500

var jumpStrength = 20
var gravity = 50

var velocity = Vector3.ZERO
var snapVector = Vector3.ZERO

var springArm
var model;

func _physics_process(delta):
	var moveDirection = Vector3.ZERO
	moveDirection.z = Input.get_axis("move_forward","move_back")
	moveDirection.x = Input.get_axis("move_left", "move_right")
	
	##if moveDirection == Vector3.ZERO:
		##return
	
	moveDirection = moveDirection.rotated(Vector3.UP, springArm.rotation.y).normalized()
	
	velocity.x  = moveDirection.x  * speed
	velocity.z = moveDirection.z * speed
	velocity.y -= gravity* delta
	
	print_debug(velocity)
	
	apply_central_force(velocity * delta);
	
	if(velocity.length() > 0.2):
		var lookDirection = Vector2(velocity.z, velocity.x)
		model.rotation.y = lookDirection.angle()
		
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	springArm = get_node("SpringArm3D")
	model = get_node("ModeloPiolho")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	springArm.position = position + Vector3(0,4,0)
	pass
