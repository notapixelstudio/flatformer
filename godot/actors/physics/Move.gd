extends "res://actors/physics/PlatformCommand.gd"

export (float) var speed = 400.0
export (Vector2) var movement_direction = Vector2.ZERO setget set_direction
export (float, EASE) var acceleration_factor = 1.0


func _physics_process(delta):
	actor.velocity.x = lerp(actor.velocity.x, movement_direction.x * speed, 
			acceleration_factor * delta)


func execute():
	if not enabled:
		return
	emit_signal("started")


func set_direction(new_direction):
	print(new_direction)
	movement_direction = new_direction


func cancel():
	emit_signal("finished")
