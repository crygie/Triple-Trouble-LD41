extends StaticBody2D

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.death()