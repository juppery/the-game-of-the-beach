extends Node


onready var gazebo = get_node("PLACEHOLDER IMAGES AHAHHAHH/gazebo")


func _ready():
	pass



func _process(delta):
	#so, we might have some images that don't pan, because we don't need them to,
	#such as ben or danny's room, or the camera to downstairs. so we need code like
	
	#if [active picture] is panoramic:
		#pan it
	#else:
		#don't pan it
