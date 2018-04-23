extends StaticBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):



func _on_Area2D_body_entered(body):
	if body.is_in_group("scenePlayer"):
		body.startWalk()
