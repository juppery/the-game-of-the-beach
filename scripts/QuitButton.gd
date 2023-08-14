extends Button


func _ready():
	get_node("HoveringTriangle").visible = false
	get_node("HoveringTriangle").frame = 0









func _on_Quit_mouse_entered():
	get_node("HoveringTriangle").visible = true


func _on_Quit_mouse_exited():
	get_node("HoveringTriangle").visible = false
