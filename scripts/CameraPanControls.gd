extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




# FIRST OFF, delete those stupid boxes. then read below:

func _process(delta):
	var mouse_position = get_global_mouse_position()
	var mouse_x_pos = mouse_position.x - 300
	print(mouse_x_pos)
	if mouse_x_pos <= 0:
		pass
#		#pan the camera left(pan the picture right)
#		Move Picture Right mouse.x
#	if leftedge.Picture touching leftedge.Window:
#		stop Moving Picture
#	if the x position is above a certain threshold:
#		#pan the camera right(pan the picture left)
#		Move Picture Left mouse.x
#	if rightedge.Picture touching rightedge.Window:
#		stop Moving Picture
