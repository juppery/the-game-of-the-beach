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
	if camerasActive == true:
		CameraUI.visible = true
		pass
	else:
		CameraUI.visible = false
		
func _on_Camera_Flipper_mouse_entered():
	
	if camerasActive == false:
		#flipactivator.disabled = true
		
		flipgif.frame = 0
		flipgif.visible = true
		flipgif.play()
		
		
	elif camerasActive == true:
		
		#flipactivator.disabled = true
		camerasActive = false
		
		reverseflipgif.frame = 0
		reverseflipgif.visible = true
		reverseflipgif.play()
		
		
func _on_Camera_Flipper_mouse_exited():
	pass
	#don't need naything yet
func _on_CameraFlip_animation_finished():
	camerasActive = true
	#flipactivator.disabled = false
	
	flipgif.visible = false
	#CameraUI.visible = true
	#the cameras are now active


func _on_ReverseCameraFlip_animation_finished():
	reverseflipgif.visible = false


func _on_debug_print_timer_timeout():
	print("vars:")
	print("CameraUI.visible "+str(CameraUI.visible))
	print("CameraUI.visible "+str(CameraUI.visible))
	print("flipgif.visible "+str(flipgif.visible))
	print("reverseflipgif.visible "+str(reverseflipgif.visible))
	print("camerasActive "+str(camerasActive))
