extends Button


func _ready():
	get_node("HoveringTriangle").visible = false
	get_node("HoveringTriangle").frame = 0



func _on_New_Game_pressed():
	get_tree().change_scene("res://scenes/nights/Night1.tscn")


func _on_New_Game_mouse_entered():
	get_node("HoveringTriangle").visible = true
	

func _on_New_Game_mouse_exited():
	get_node("HoveringTriangle").visible = false
