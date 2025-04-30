class_name InteractableComponent
extends Area2D

signal interactable_activated
signal interactable_deactiveted

@warning_ignore("unused_parameter")
func _on_body_entered(body: Node2D) -> void:
	interactable_activated.emit()


@warning_ignore("unused_parameter")
func _on_body_exited(body: Node2D) -> void:
	interactable_deactiveted.emit()
