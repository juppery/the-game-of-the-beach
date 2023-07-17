extends Sprite

#makes it so i can refer to this sprite as its name
#onready var window_closed_sprite = get_node(".")
export var slideSpeed = 300




#makes a variable that i can change and then later convert to the position of the sprite
var velocity = Vector2.ZERO


#func _ready():
#	pass

var windowOpen = true

func _process(delta):	
	
	
	#refer to line 7, or whichever talsk about 238
	if windowOpen == true and position.y != 0:
		velocity.y -= slideSpeed*delta
	
	if windowOpen != true and position.y != 238:
		velocity.y += slideSpeed*delta
		
	if position.y == 0 and velocity.y < 0:
		velocity.y = 0
	if position.y == 238 and velocity.y > 0:
		velocity.y = 0
	position.y += velocity.y
	position.y = clamp(position.y, 0, 238)
	#print("velocity ", velocity.y) #debug purposes
	#print("position ", position.y) #debug purposes
func _on_close_window_button_button_down():
	windowOpen = false

func _on_close_window_button_button_up():
	windowOpen = true


func _on_close_window_button_mouse_exited():
	windowOpen = true
