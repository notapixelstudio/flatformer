extends Line2D

onready var path = $".."


func _ready():
	for point in path.curve.get_baked_points():
		add_point(point)