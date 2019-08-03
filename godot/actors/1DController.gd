extends PathFollow2D


var velocity = Vector2.ZERO setget set_velocity

func _physics_process(delta):
	offset += velocity.x * delta


func set_velocity(new_velocity):
	velocity = new_velocity

