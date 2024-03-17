extends Area3D

class_name Interactable

signal focused(interactor: Interactor)

signal unfocused(interactor: Interactor)

signal interacted(interactor: Interactor)

func _on_focused(interactor):
	pass

func _on_interacted(interactor):
	pass

func _on_unfocused(interactor):
	pass
