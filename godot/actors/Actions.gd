extends Node

"""
Wrapper for actions an actor can perform
"""

func set_direction(new_direction):
	for child in get_children():
		if child.has_method("set_direction"):
			child.set_direction(new_direction)
