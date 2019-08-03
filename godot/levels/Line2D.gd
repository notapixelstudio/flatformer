extends Line2D

onready var path = $".."


func _ready():
	var i = 0
	for point in path.curve.get_baked_points():
		add_point(point)
		if i %10 == 0:
			yield(get_tree().create_timer(0.01), "timeout")
		i +=1
		