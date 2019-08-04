extends "res://actors/physics/PlatformCommand.gd"

export (float) var speed = 400.0
export (Vector2) var movement_direction = Vector2.ZERO setget set_direction
export (float, EASE) var acceleration_factor = 1.0


func _physics_process(delta):
	if abs(actor.velocity.x) < speed:
		actor.velocity.x = movement_direction.x * speed
	else:
		set_physics_process(false)


func execute():
	if not enabled:
		return
	set_physics_process(true)
	emit_signal("started")


func set_direction(new_direction):
	movement_direction = new_direction


func cancel():
	set_physics_process(false)
	emit_signal("finished")
