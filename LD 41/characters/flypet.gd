extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	match gameTimer.dogFood:
		0:
			scale = Vector2(.2,.2)
		1:
			scale = Vector2(.4,.4)
		2:
			scale = Vector2(.5,.5)
		3:
			scale = Vector2(.6,.6)
		4:
			scale = Vector2(.7,.7)
		5:
			scale = Vector2(.8,.8)
		6:
			scale = Vector2(1,1)