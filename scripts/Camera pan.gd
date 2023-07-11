extends Node


onready var gazebo = get_node("PLACEHOLDER IMAGES AHAHHAHH/gazebo")


func _ready():
	pass # Replace with function body.



func _process(delta):
	var leftedgeofgazebo = gazebo.position.x
	print(leftedgeofgazebo)
	if leftedgeofgazebo < 1920:
		gazebo.position.x += 10

