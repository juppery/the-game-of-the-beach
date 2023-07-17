extends Node2D

onready var flipgif = get_node("Camera Flipper/CameraFlip")
onready var uiimages = get_node("UI Images")
onready var cameraimages = get_node("Camera Images")

onready var camerasactive = false


func _ready():
	uiimages.visible = false
	cameraimages.visible = false

func _process(delta):
	pass


func _on_Camera_Flipper_mouse_entered():
	flipgif.play()



func _on_CameraFlip_animation_finished():
	flipgif.visible = false
	uiimages.visible = true
	cameraimages.visible = true
