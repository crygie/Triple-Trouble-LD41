extends StaticBody2D

export var path = " "

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("player") && !body.isDead:
		get_tree().change_scene(path)
