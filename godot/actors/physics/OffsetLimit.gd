extends "res://actors/physics/Stop.gd"

export (float) var max_distance = 200

var initial_offset = 0

func _physics_process(delta):
	check_distance()


func check_distance():
	if not enabled:
		return
	if abs(initial_offset - actor.offset) > max_distance:
		execute()


func set_enabled(enable):
	if enable:
		initial_offset = actor.offset
	.set_enabled(enable)
