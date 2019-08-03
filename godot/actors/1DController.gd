extends PathFollow2D


var velocity = Vector2.ZERO setget set_velocity

func _physics_process(delta):
	offset += velocity.x * delta
	unit_offset = clamp(unit_offset, 0.0, 1.0)


func set_velocity(new_velocity):
	velocity = new_velocity

