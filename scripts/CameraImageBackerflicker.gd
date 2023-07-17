extends ColorRect

onready var backer = get_node(".")

func _process(delta):
	var preglorg = rand_range(1,8) #edit this to make the border flash more often/less often
	if preglorg < 2:
		var glorg = rand_range(1, 1.2) # edit this to edit the range of shades of white/black
		backer.color.r = 1/glorg
		backer.color.g = 1/glorg
		backer.color.b = 1/glorg
		print(backer.color)
