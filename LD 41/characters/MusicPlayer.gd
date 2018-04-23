extends AudioStreamPlayer

func playEffect(effectNumber):
	match effectNumber:
		0: 
			if !$Spike.playing:
				$Spike.play()
		1:
			$Key.play()
		2:
			$Door.play()
		3:
			$Boulder.play()
		4:
			$Saw.play()
		5:
			#if !$Platform.playing:
			#	$Platform.play()
			pass
		6:  
			$Munch.play()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
