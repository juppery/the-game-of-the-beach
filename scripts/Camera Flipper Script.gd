extends Node2D

onready var CameraUI = get_node("Camera UI")

onready var cameraflipper = get_node("Camera Activation/Camera Flipper")
onready var reverseflipgif = get_node("Camera Activation/ReverseCameraFlip")
onready var flipgif = get_node("Camera Activation/CameraFlip")
onready var flipicon = get_node("Camera Activation/FlipIcon")


onready var mouseInActivator = false
onready var camerasActive = false

func _ready():
	CameraUI.visible = false
	
	flipgif.visible = false
	reverseflipgif.visible = false
	#make everything invisible but the camera activation
	

func _process(delta):
	if camerasActive == true:
		CameraUI.visible = true
		
	elif camerasActive == false:
		CameraUI.visible = false
		
	#if mouseInActivator == true or flipgif.visible == true or reverseflipgif.visible == true:
	#	cameraflipper.visible = false
	#	flipicon.visible = false
	#else:
	#	cameraflipper.visible = true
	#	flipicon.visible = true
func _on_Camera_Flipper_mouse_entered():
	
	flipicon.visible = false #invisibles the flip icon
	mouseInActivator = true # changes the mouseInActivator to true
	
	if flipgif.visible == false and reverseflipgif.visible == false:
		
		if camerasActive == false:
			
			flipgif.frame = 0
			flipgif.visible = true
			flipgif.play()
			
			
		elif camerasActive == true:
			
			camerasActive = false
			
			reverseflipgif.frame = 0
			reverseflipgif.visible = true
			reverseflipgif.play()
			
			mouseInActivator = true
			
			
func _on_Camera_Flipper_mouse_exited():
	
	mouseInActivator = false
	
	if flipgif.visible == false and reverseflipgif.visible == false:
		flipicon.visible = true
	
func _on_CameraFlip_animation_finished():
	
	
	
	camerasActive = true
	#flipactivator.disabled = false
	
	flipgif.visible = false
	
	if mouseInActivator == false:
		flipicon.visible = true


func _on_ReverseCameraFlip_animation_finished():
	reverseflipgif.visible = false
	if mouseInActivator == false:
		flipicon.visible = true

func _on_debug_print_timer_timeout():
	print("vars:")
	print("CameraUI.visible "+str(CameraUI.visible))
	print("CameraUI.visible "+str(CameraUI.visible))
	print("flipgif.visible "+str(flipgif.visible))
	print("reverseflipgif.visible "+str(reverseflipgif.visible))
	print("camerasActive "+str(camerasActive))
	print("mouseInActivator "+str(mouseInActivator))
	
