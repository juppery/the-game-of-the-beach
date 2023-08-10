extends Button


func _ready():
	get_node("JermaGif").visible = false
	get_node("JermaGif").frame = 0


func _on_Continue_mouse_entered():
	get_node("JermaGif").visible = true


func _on_Continue_mouse_exited():
	get_node("JermaGif").visible = false
