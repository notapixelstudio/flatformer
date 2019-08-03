extends PlaformPhysics

export (float) var speed = 0.01
var movement_direction = Vector2.ZERO setget set_movement_direction

func _physics_process(delta):
	apply()


func apply():
	platform_actor.velocity.x = movement_direction.x * speed
	print(platform_actor.velocity.x)


func set_movement_direction(new_direction):
	movement_direction = new_direction


func stop():
	movement_direction = Vector2.ZERO
