extends Node2D

var goal_point : Vector2 = Vector2(100,100)
export (float) var line_width : float = 1 setget set_width
onready var lightning : Array = get_children()

func _ready():
	set_width(line_width)
	
func _process(delta):
	for child in lightning:
		child.goal_point =  goal_point
	
func start_emitting():
	for child in lightning:
		child.emitting = true

func stop_emitting():
	for child in lightning:
		child.emitting = false

func set_width(amount):
	line_width = amount
	for child in get_children():
		child.set_line_width(line_width)
