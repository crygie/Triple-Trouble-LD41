extends StaticBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	add_to_group("traps")
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.keyGot = true
		MusicPlayer.playEffect(1)
		hide()
		queue_free()
	pass
