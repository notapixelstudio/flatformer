extends PathFollow2D

export var reference_path : NodePath
var velocity = Vector2.ZERO setget set_velocity
onready var remote_controller = $RemoteTransformer

func get_reference():
	return get_node(reference_path)
	
	
func _physics_process(delta):
	offset += velocity.x * delta
	unit_offset = clamp(unit_offset, 0.0, 1.0)

	
func set_velocity(new_velocity):
	velocity = new_velocity

