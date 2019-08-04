extends Path2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Line2D_level_drawn():
	for spawner in get_tree().get_nodes_in_group("spawnable"):
		var spawn = spawner.get_reference()
		spawn.visible = true
		
