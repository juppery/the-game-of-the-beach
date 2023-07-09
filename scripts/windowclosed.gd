extends Sprite

#makes it so i can refer to this sprite as its name
onready var window_closed_sprite = get_node(".")

var windowDown = false
var windowButtonUp = false
#makes a variable that i can change and then later convert to the position of the sprite
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#calculate the new position without modifying the sprite's position directly
	var new_pos = position
	#makes it so the sprite can't go above or below those numbers
	
	if windowDown == true and position.y < 238:
		
		velocity.y -= 90*delta
		new_pos.y += velocity.y + 28
		
	if windowDown == false and position.y > 0:
		velocity.y += 90*delta
		new_pos.y -= velocity.y + 28
	
	#everything here calculate the new position without modifying the sprite's actual position directly. basically giving it one instruction instead of a billion i think
	new_pos.y = clamp(new_pos.y, 0, 238)
	position.y = new_pos.y
	
	if position.y >= 238 and windowButtonUp:
		windowDown = false



func _on_close_window_button_button_down():
	windowDown = true
	windowButtonUp = false

func _on_close_window_button_button_up():
	windowButtonUp = true
