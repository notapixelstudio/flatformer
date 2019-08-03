extends "res://actors/physics/PlatformCommand.gd"

export (float, EASE) var friction_factor = 1.0

func _physics_process(delta):
	actor.velocity.x = lerp(actor.velocity.x, 0.0, friction_factor * delta)
	if abs(actor.velocity.x) < 1.0:
		emit_signal("finished")
		set_physics_process(false)


func execute():
	set_physics_process(true)
	emit_signal("started")


func cancel():
	emit_signal("finished")
