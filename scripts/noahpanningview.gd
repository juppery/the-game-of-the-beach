extends Sprite


export var pan_speed = 0.04
var rightedgesmatch = 0


#func _ready():
#	pass





func _process(delta):
	var mouse_position = get_global_mouse_position()
	var mouse_x_pos = mouse_position.x - 500
	#print(mouse_x_pos)
	if mouse_x_pos <= 0:
		position.x -= pan_speed*mouse_x_pos
	if mouse_x_pos >= 920:
		position.x -= pan_speed*(mouse_x_pos-920)
		

	position.x = clamp(position.x, 640, 1280)
	





