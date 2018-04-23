extends StaticBody2D

func _ready():
	MusicPlayer.playEffect(4)

func _process(delta):
	
	pass

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		body.death()