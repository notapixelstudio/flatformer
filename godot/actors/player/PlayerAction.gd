extends Node

"""
Manages and signalize Action input events to a Command
"""

signal pressed
signal released
signal handling

export (String) var action = ""
export (bool) var one_shot = false
export (float) var timeout = 0
var depleted = false


func _unhandled_input(event):
	if not event.is_action_type():
		return
	if event.is_echo():
		return
	if not event.is_action(action):
		return
	handle_input(event)


func handle_input(event):
	emit_signal("handling")
	if event is InputEventJoypadMotion:
		if event.get_action_strength(action) > 0.3:
			emit_signal("pressed")
		elif event.get_action_strength(action) < 0.3:
			emit_signal("released")
	else:
		if event.is_pressed():
			emit_signal("pressed")
			get_tree().set_input_as_handled()
		else:
			emit_signal("released")
			get_tree().set_input_as_handled()

func is_holding():
	if Input.is_action_pressed(action):
		emit_signal("handling")
		emit_signal("pressed")
