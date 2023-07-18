extends Node2D

onready var CameraUI = get_node("Camera UI")

onready var flipactivator = get_node("Camera Activation/Camera Flipper/FlipActivator")
onready var reverseflipgif = get_node("Camera Activation/ReverseCameraFlip")
onready var flipgif = get_node("Camera Activation/CameraFlip")
onready var flipicon = get_node("Camera Activation/FlipIcon")




onready var camerasActive = false

func _ready():
	CameraUI.visible = false
	
	flipgif.visible = false
	reverseflipgif.visible = false
	#make everything invisible but the camera activation
	

func _process(delta):
	pass
	
func _on_Camera_Flipper_mouse_entered():
	print("glorg")
	if camerasActive == false:
		#flipactivator.disabled = true
		
		flipgif.visible = true
		flipgif.play()
		
		
	if camerasActive == true:
		
		camerasActive = false
		#flipactivator.disabled = true
		
		reverseflipgif.visible = true
		reverseflipgif.play()
		
		
func _on_Camera_Flipper_mouse_exited():
	pass
	#don't need naything yet
func _on_CameraFlip_animation_finished():
	camerasActive = true
	#flipactivator.disabled = false
	
	flipgif.visible = false
	CameraUI.visible = true
	#the cameras are now active


func _on_ReverseCameraFlip_animation_finished():
	reverseflipgif.visible = false
