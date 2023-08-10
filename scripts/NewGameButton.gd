extends Button


func _ready():
	get_node("JermaGif").visible = false
	get_node("JermaGif").frame = 0



func _on_New_Game_pressed():
	get_tree().change_scene("res://scenes/nights/Night1.tscn")


func _on_New_Game_mouse_entered():
	get_node("JermaGif").visible = true
	

func _on_New_Game_mouse_exited():
	get_node("JermaGif").visible = false
