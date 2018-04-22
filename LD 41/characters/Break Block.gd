extends StaticBody2D

var landNum = 1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if landNum == 0:
		hide()
		queue_free()

func _on_Area2D_body_exited(body):
	landNum -= 1
