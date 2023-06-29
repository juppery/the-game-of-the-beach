extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var pan_speed = 0.03

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var mouse_position = get_global_mouse_position()
	var mouse_x_pos = mouse_position.x - 500
	#print(mouse_x_pos)
	if mouse_x_pos <= 0:
		position.x -= pan_speed*mouse_x_pos
	if mouse_x_pos >= 920:
		position.x -= pan_speed*(mouse_x_pos-920)
		


func _on_right_edge_mouse_entered():
	print("big piner")
