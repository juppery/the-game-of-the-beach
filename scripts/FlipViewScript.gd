extends Node2D
onready var DoorNode = get_node("Door")
onready var ShowerNode = get_node("Shower")
onready var WindowNode = get_node("Window")
onready var RightFlipBox = get_node("ViewControl/RightFlipBox")
onready var GifNode = get_node("ViewControl/Gifs")
onready var ShowerToWindowGif = get_node("ViewControl/Gifs/showertowindow")

#just a check. this can be shower, window, door, or in between any of them. smart, huh?
onready var lookingat = "shower"



func _process(delta):
	if lookingat == "door" or lookingat == "window" or lookingat == "shower":
		RightFlipBox.visible = true
	else:
		RightFlipBox.visible = false
		

func _ready():
	DoorNode.visible = false
	ShowerNode.visible = true
	WindowNode.visible = false
	ShowerToWindowGif.visible = false

func _on_LeftFlipBox_mouse_entered():
	pass # Replace with function body.


func _on_RightFlipBox_mouse_entered():
	lookingat = "transition"
	ShowerToWindowGif.frame = 0
	ShowerToWindowGif.visible = true
	ShowerToWindowGif.play()



func _on_showertowindow_animation_finished():
	lookingat = "window"
	ShowerNode.visible = false
	WindowNode.visible = true
	ShowerToWindowGif.visible = false



