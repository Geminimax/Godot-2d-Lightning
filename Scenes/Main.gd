extends Node2D

onready var bolt = $LightningBolt

func _input(event):
   # Mouse in viewport coordinates
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_LEFT :
			bolt.global_position = event.position
		elif event.button_index == BUTTON_RIGHT:
			bolt.goal_point = event.position

