extends Node2D

onready var CameraImages = get_node("Camera Images")
#singular rooms
onready var SchoolroomImages = get_node("Camera Images/Schoolroom")
onready var BackroomImages = get_node("Camera Images/Backroom")
onready var SamsRoomImages = get_node("Camera Images/Sams Room")
onready var KitchenImages = get_node("Camera Images/Kitchen")
onready var ParentsRoomImages = get_node("Camera Images/Parents Room")
onready var PatioImages = get_node("Camera Images/Patio")
onready var DownstairsImages = get_node("Camera Images/To Downstairs")
onready var StairsImages = get_node("Camera Images/Stairs")
onready var BensRoomImages = get_node("Camera Images/Bens Room")
onready var DannysRoomImages = get_node("Camera Images/Dannys Room")
onready var OutsideImages = get_node("Camera Images/OutsideWindow")





func _ready():
	for child in CameraImages.get_children():
		child.visible = false
	
	SchoolroomImages.visible = true



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

