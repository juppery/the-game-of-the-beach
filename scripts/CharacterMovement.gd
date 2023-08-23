extends Node2D

#need these to make them disappear
onready var RightFlipBox = get_node("FlipView/ViewControl/RightFlipBox")
onready var LeftFlipBox = get_node("FlipView/ViewControl/LeftFlipBox")



onready var windowscript = get_node("noahpanningview/window_closed_sprite")
#onready var doorscript = getnode (node with the doorscript)

onready var benLocation = "schoolroom"
onready var benAggressionValue = 0

onready var dannyLocation = "schoolroom"
onready var dannyAggressionValue = 0

onready var HourLabel = get_node("HourLabel")
onready var hour = 0

#debug purposes, this is for
#func _process(delta):
#	print("danny loc: "+dannyLocation)
#	print("ben loc: "+benLocation)


func _process(delta):
	#handles making tingss disappear when other things are visible
	if get_node("Cameras").camerasActive == true:
		RightFlipBox.visible = false
		LeftFlipBox.visible = false
func _on_HourTimer_timeout():
	if hour == 0:
		HourLabel.text = "1 AM"
	if hour == 1:
		HourLabel.text = "2 AM"
		dannyAggressionValue += 1
	if hour == 2:
		HourLabel.text = "3 AM"
		dannyAggressionValue += 1
		benAggressionValue + 1
	if hour == 3:
		HourLabel.text = "4 AM"
		dannyAggressionValue += 1
		benAggressionValue += 1
	if hour == 4:
		HourLabel.text = "5 AM"
	if hour == 5:
		pass #PLAYER WINS!!! WOOOOOOOOOO!!!!!!! maybe figure out a way to save the nights won?
	hour += 1



func _on_BenTimer_timeout():
	
	var twentySidedDie = rand_range(1, 20)
	var hundredSidedDie = rand_range(1, 100)
	if twentySidedDie <= benAggressionValue:
		if benLocation == "schoolroom":
			benLocation = "backroom"
		elif benLocation == "backroom":
			if hundredSidedDie <= 35:
				benLocation = "schoolroom"
			elif hundredSidedDie > 35:
				benLocation = "kitchen"
		elif benLocation == "kitchen":
			if hundredSidedDie <= 25:
				benLocation = "samsroom"
			elif hundredSidedDie > 25 and hundredSidedDie < 50:
				benLocation = "backroom"
			elif hundredSidedDie >= 50:
				benLocation = "stairs" #referring to the bottom of the stairs
		elif benLocation == "samsroom":
			benLocation = "kitchen"
		elif benLocation == "stairs":
			if hundredSidedDie <= 40:
				benLocation = "kitchen"
			elif hundredSidedDie > 40 and hundredSidedDie <= 90:
				benLocation = "bensroom"
			elif hundredSidedDie > 90:
				benLocation = "door"
#		elif benLocation == "door":
#			if doorscript.doorOpen == true:  #i haven't made the door script or the door variable yet. that'll happen
#				print("you lose stoobid")
#				#signal JUMPSCARE PLAYER !!!! AHHHH!!! SCARY!! #play a gif and over the game
#			elif doorscript.doorOpen == false:
#				benLocation = "schoolroom" #we can change this
	print("ben loc: "+benLocation)



func _on_DannyTimer_timeout():
	
	var twentySidedDie = rand_range(1, 20)
	var hundredSidedDie = rand_range(1, 100)
	if twentySidedDie <= dannyAggressionValue:
		if dannyLocation != "dannysroom":
			if hundredSidedDie < 15:
				dannyLocation = "schoolroom"
			elif hundredSidedDie >= 15 and hundredSidedDie < 30:
				dannyLocation = "backroom"
			elif hundredSidedDie >= 30 and hundredSidedDie < 40:
				dannyLocation = "kitchen"
			elif hundredSidedDie >= 40 and hundredSidedDie < 55:
				dannyLocation = "samsroom"
			elif hundredSidedDie >= 55 and hundredSidedDie < 80:
				dannyLocation = "stairs"
			elif hundredSidedDie >= 80:
				dannyLocation = "dannysroom"
#		elif dannyLocation == "dannysroom":
#			if doorscript.doorOpen == true:  #i haven't made the door script or the door variable yet. that'll happen
#				signal JUMPSCARE PLAYER !!!! AHHHH!!! SCARY!! #play a gif and over the game
#			elif doorscript.doorOpen == false:
#				dannyLocation = "kitchen" #we can change this
	print("danny loc: "+dannyLocation)

####CAMERA CONTROLLING-----------------------------------------------------------


onready var CameraImages = get_node("Cameras/Camera UI/Camera Images")
#singular rooms
onready var SchoolroomImages = get_node("Cameras/Camera UI/Camera Images/Schoolroom")
onready var BackroomImages = get_node("Cameras/Camera UI/Camera Images/Backroom")
onready var SamsRoomImages = get_node("Cameras/Camera UI/Camera Images/Sams Room")
onready var KitchenImages = get_node("Cameras/Camera UI/Camera Images/Kitchen")
onready var ParentsRoomImages = get_node("Cameras/Camera UI/Camera Images/Parents Room")
onready var PatioImages = get_node("Cameras/Camera UI/Camera Images/Patio")
onready var DownstairsImages = get_node("Cameras/Camera UI/Camera Images/To Downstairs")
onready var StairsImages = get_node("Cameras/Camera UI/Camera Images/Stairs")
onready var BensRoomImages = get_node("Cameras/Camera UI/Camera Images/Bens Room")
onready var DannysRoomImages = get_node("Cameras/Camera UI/Camera Images/Dannys Room")
onready var OutsideImages = get_node("Cameras/Camera UI/Camera Images/OutsideWindow")
#these ones just needs to be made
onready var Cameras = get_node("Cameras")
onready var SchoolroomButton = get_node("Cameras/Camera UI/CameraButtons/ButtonSchoolroom")




func _ready():
	for child in CameraImages.get_children():
		child.visible = false
	
	SchoolroomImages.visible = true
	#SchoolroomButton.pressed = true


func _on_ButtonOutsideWindow_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	OutsideImages.visible = true


func _on_ButtonBensRoom_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	BensRoomImages.visible = true


func _on_ButtonDannysRoom_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	DannysRoomImages.visible = true


func _on_ButtonStairs_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	StairsImages.visible = true


func _on_ButtonSchoolroom_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	SchoolroomImages.visible = true


func _on_ButtonSamsRoom_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	SamsRoomImages.visible = true


func _on_ButtonKitchen_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	KitchenImages.visible = true


func _on_ButtonBackroom_button_down():
	for child in CameraImages.get_children():
		child.visible = false
	
	BackroomImages.visible = true





func _on_ButtonParentsBedroom_button_down():
	pass # Replace with function body.


func _on_ButtonPatio_button_down():
	pass # Replace with function body.
