extends "res://actors/physics/Move.gd"


func execute():
	if not enabled:
		return
	actor.velocity = movement_direction * speed
	var kinematic_path = actor.remote_controller.remote_path
	#kinematic.killer = true
	var kinematic = actor.get_reference()
	kinematic.killer = true
	emit_signal("started")


func cancel():
	
	var kinematic = actor.get_reference()
	kinematic.killer = false
	emit_signal("finished")
