extends PlaformPhysics

export (float) var speed = 800.0
export (float) var acc = 300.0
export (float) var friction = 2.0
var movement_direction = Vector2.ZERO setget set_movement_direction

func _physics_process(delta):
	var this_friction = friction
	var desired_x = (movement_direction.x * acc * delta)
	
	print(desired_x, "   " , platform_actor.velocity.x)
	if desired_x != 0:
		this_friction *= 0
	if desired_x > platform_actor.velocity.x:
		this_friction *= -1
	platform_actor.velocity.x += desired_x - friction


func apply():
	platform_actor.velocity.x = movement_direction.x * acc


func set_movement_direction(new_direction):
	movement_direction = new_direction


func stop():
	movement_direction = Vector2.ZERO
