extends CharacterBody3D

var current_interactive_object = null

func _physics_process(delta):
	# Verifica se há uma colisão com um objeto interativo
	var body = get_overlapping_body()
	if body and body.has_method("interact"):
		# Se o objeto tiver um método de interação, armazena o objeto interativo
		current_interactive_object = body
	else:
		# Se não houver colisão ou o objeto não tiver um método de interação, redefine o objeto interativo atual
		current_interactive_object = null

	# Se a tecla de interação for pressionada e houver um objeto interativo em foco
	if Input.is_action_pressed("interact") and current_interactive_object:
		# Chama o método "interact" do objeto interativo
		current_interactive_object.interact()


func get_overlapping_body():
	var bodies = 
	for body in bodies:
		if body != self and body.is_in_group("interactive"):
			return body
	return null

