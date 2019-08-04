extends "res://actors/physics/PlatformCommand.gd"

export (float, EASE) var friction_factor = 1.0

func _physics_process(delta):
	#actor.velocity.x = lerp(actor.velocity.x, 0.0, friction_factor * delta)
	actor.velocity.x = 0.0


func execute():
	emit_signal("started")


func cancel():
	emit_signal("finished")
