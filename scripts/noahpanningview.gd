extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var pan_speed = 0.04
var rightedgesmatch = 0
var leftedgesmatch = 0
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

#checks if the right edge of the screen and the right edge of the panorama touch each other
func _on_right_edge_area_entered(area):
	rightedgesmatch = 1

func _on_right_edge_area_exited(area):
	rightedgesmatch = 0

#checks if the LEFT edge of the screen and the LEFT edge of the panorama touch each other
func _on_left_edge_area_entered(area):
	leftedgesmatch = 1

func _on_left_edge_area_exited(area):
	leftedgesmatch = 0




func _process(delta):
	var mouse_position = get_global_mouse_position()
	var mouse_x_pos = mouse_position.x - 500
	#print(mouse_x_pos)
	if mouse_x_pos <= 0:
		if leftedgesmatch == 1:
			pass
		if leftedgesmatch == 0:
			position.x -= pan_speed*mouse_x_pos
	if mouse_x_pos >= 920:
		if rightedgesmatch == 1:
			pass
		if rightedgesmatch == 0:
			position.x -= pan_speed*(mouse_x_pos-920)
		


	





