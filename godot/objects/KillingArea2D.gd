extends Area2D

onready var enema = get_parent()
export (bool) var invincible = false

func _on_body_entered(body):
	if body.is_in_group("player"):
		if body.killer and not invincible:
			enema.queue_free()
		else:
			get_tree().reload_current_scene()
