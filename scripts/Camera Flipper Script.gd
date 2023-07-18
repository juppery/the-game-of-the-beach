extends Node2D

onready var flipactivator = get_node("Camera Flipper/FlipActivator")
onready var reverseflipgif = get_node("Camera Flipper/ReverseCameraFlip")
onready var flipgif = get_node("Camera Flipper/CameraFlip")
onready var uiimages = get_node("UI Images")
onready var cameraimages = get_node("Camera Images")
onready var flipicon = get_node("Camera Flipper/CollisionShape2D/FlipIcon")




onready var camerasActive = false
onready var mouseInActivator = false

func _ready():
	uiimages.visible = false
	cameraimages.visible = false
	
	flipgif.visible = false
	reverseflipgif.visible = false
func _process(delta):
	if camerasActive == true:
		uiimages.visible = true
		cameraimages.visible = true
		
	if mouseInActivator == false and flipgif.visible == false and reverseflipgif.visible == false:
		flipactivator.visible = true
	else:
		flipactivator.visible = false
		
func _on_Camera_Flipper_mouse_entered():
	mouseInActivator = true
	
	if camerasActive == false:
		flipgif.visible = true
		flipgif.play()
	
	if camerasActive == true:
		reverseflipgif.play()
		camerasActive = false
func _on_Camera_Flipper_mouse_exited():
	mouseInActivator = false

func _on_CameraFlip_animation_finished():
	camerasActive = true
	flipgif.visible = false
	
