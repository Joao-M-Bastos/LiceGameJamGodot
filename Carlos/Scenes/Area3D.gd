extends Area3D

func _on_Area_body_entered(body):
	# Verifica se o corpo que entrou na área está na camada "interactive"
	if body.get_collision_layer_bit(2): # 11 é o índice da camada "interactive"
		# Realize a interação com o corpo
		interact_with(body)

func interact_with(body):
	# Implemente aqui as ações que você deseja realizar ao interagir com o objeto
	print("Interagindo com:", body.name)

