extends Timer

var gameStart = false

func _ready():
	if gameStart:
		start()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
