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
			scale = Vector2(.1,.1)
		1:
			scale = Vector2(.2,.2)
		2:
			scale = Vector2(.25,.25)
		3:
			scale = Vector2(.3,.3)
		4:
			scale = Vector2(.35,.35)
		5:
			scale = Vector2(.4,.4)
		6:
			scale = Vector2(.45,.45)