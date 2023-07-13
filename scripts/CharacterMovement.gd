extends Node2D

onready var windowscript = get_node("noahpanningview/window_closed_sprite")
onready var benLocation = "schoolroom"
onready var dannyLocation = "schoolroom"
onready var hour = 1

func _process(delta):
	print("danny's location is "+dannyLocation)
	print("ben's location is "+benLocation)




func _on_HourTimer_timeout():
	pass # Replace with function body.







func _on_BenTimer_timeout():
	check hour
	check current agression number
	if hour == 1:
		roll number 1-20
		if [rolled number] <= [agression number]:
			if benLocation(i''ll make that a variable) == "schoolroom":
			benLocation = "backroom"
			elif benLocation == "backroom":
				roll number 1-100
				if [rolled number] <= 35:
					benLocation = "schoolroom"
				elif [rolled number] > 35:
					benLocation = "kitchen"
			elif benLocation == "kitchen":
				roll number 1-100
				if [rolled number] <= 25:
					benLocation = "samsroom"
				elif [rolled number] > 25 and < 50:
					benLocation = "schoolroom"
				elif [rolled number] >= 50:
					benLocation = "stairs" #referring to the bottom of the stairs
			elif benLocation == "samsroom":
				benLocation = "kitchen"
			elif benLocation == "stairs":
				roll number 1-100
				if [rolled number] <= 40:
					benLocation = "kitchen"
				elif [rolled number] > 40 and <= 90:
					benLocation = "bensroom"
				elif [rolled number] > 90:
					benLocation = "door"
			elif benLocation == "door":
				if doorscript.doorOpen == true:  #i haven't made the door script or the door variable yet. that'll happen
					print("you lose stoobid")
					#signal JUMPSCARE PLAYER !!!! AHHHH!!! SCARY!! #play a gif and over the game
				elif doorscript.doorOpen == false:
					benLocation = "schoolroom" #we can change this

			
			
			
			
			
			


func _on_DannyTimer_timeout():
	check hour
	check current agression number
	if hour == 1:
		roll number 1-20
		if [rolled number] <= [agression number]:
			if dannyLocation != "dannysroom":
				roll number 1-100
				if [rolled number] < 15:
					dannyLocation = "schoolroom"
				elif [rolled number] >= 15 and < 30:
					dannyLocation = "backroom"
				elif [rolled number] >= 30 and < 40:
					dannyLocation = "kitchen"
				elif [rolled number] >= 40 and < 55:
					dannyLocation = "samsroom"
				elif [rolled number] >= 55 and < 80:
					dannyLocation = "stairs"
				elif [rolled number] >= 80:
					dannyLocation = "dannysroom"
			elif dannyLocation == "dannysroom":
				if doorscript.doorOpen == true:  #i haven't made the door script or the door variable yet. that'll happen
					signal JUMPSCARE PLAYER !!!! AHHHH!!! SCARY!! #play a gif and over the game
				elif doorscript.doorOpen == false:
					dannyLocation = "kitchen" #we can change this



