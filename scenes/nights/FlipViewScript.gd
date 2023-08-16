extends Node2D
onready var DoorNode = get_node("Door")
onready var ShowerNode = get_node("Shower")
onready var WindowNode = get_node("Window")
onready var GifNode = get_node("ViewControl/Gifs")
onready var ShowerToWindowGif = get_node("ViewControl/Gifs/showertowindow")


func _ready():
	DoorNode.visible = false
	ShowerNode.visible = true
	WindowNode.visible = false
	ShowerToWindowGif.visible = false

func _on_LeftFlipBox_area_entered(area):
	pass # Replace with function body.


func _on_RightFlipBox_area_entered(area):
	ShowerToWindowGif.visible = true
	ShowerToWindowGif.frame = 0
	ShowerToWindowGif.play
