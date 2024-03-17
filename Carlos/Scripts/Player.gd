extends RigidBody3D

var mouse_sensitivity := 0.002
var twist_input := 0.0
var pitch_input := 0.0

#Transformando o path em variavel pra reduzir o tamanho do codigo
@onready var twist_pivot := $TwistPivot
@onready var pitch_pivot := $TwistPivot/PitchPivot
@onready var player_body := $Player



# Roda ao iniciar
func _ready():
	#Desabilitando o mouse ao iniciar jogo
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

# Roda todo frame
func _process(delta):
	Movement(delta)
	CameraMovement()

func Movement(_delta):
	#Pegando os inputs
	var input := Vector3.ZERO
	input.x = Input.get_axis("move_left", "move_right")
	input.z = Input.get_axis("move_forward", "move_back")
	
	#Aplicando forca de acordo com a camera
	apply_central_force(twist_pivot.basis * input * 1200.0 * _delta)

func CameraMovement():
	# Habilitando o mouse caso aperte ESC
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	#Acessando o node da cena "TwistPivot" e manipulando
	twist_pivot.rotate_y(twist_input)
	#global_rotate(global_transform.origin, twist_input)
	pitch_pivot.rotate_x(pitch_input)
	pitch_pivot.rotation.x = clamp(pitch_pivot.rotation.x,
	 deg_to_rad(-30),
	 deg_to_rad(30)
	)
	
	twist_input = 0.0
	pitch_input = 0.0


#Funcao para salvar movimentos da camera
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		#Garantindo que a camera nao se mova caso tenha apertado ESC
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			#Movendo a camera de acordo com os pivot e a sensibilidade
			twist_input = - event.relative.x * mouse_sensitivity
			pitch_input = - event.relative.y * mouse_sensitivity
