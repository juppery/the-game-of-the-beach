extends Node2D

onready var uiimages = get_node("UI Images")
onready var cameraimages = get_node("Camera Images")

onready var flipactivator = get_node("Camera Activation/Camera Flipper/FlipActivator")
onready var reverseflipgif = get_node("Camera Activation/ReverseCameraFlip")
onready var flipgif = get_node("Camera Activation/CameraFlip")
onready var flipicon = get_node("Camera Activation/FlipIcon")




onready var camerasActive = false
onready var mouseInActivator = false

func _ready():
	pass
	#make everything invisible but the FlipActivator
	
func _on_Camera_Flipper_mouse_entered():
	pass
	#if the cameras aren't active:
		#deactivate the FlipActivator(temporarily)
		#make the flip gif visible
		#play the camera flip gif
	#if the cameras are active:
		#deactivate the flipactivator
		#make the reverseflipgif visible
		#play the reverse camera flip gif
func _on_Camera_Flipper_mouse_exited():
	pass
	#don't need naything yet
func _on_CameraFlip_animation_finished():
	pass
	#make the flipgif invisible
	#show the rest of the ui
	#the cameras are now active


func _on_ReverseCameraFlip_animation_finished():
	pass
	#make the reverseflipgif invisible
