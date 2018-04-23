extends StaticBody2D

var landNum = 1

func _ready():
	pass

func _process(delta):
	if landNum == 0:
		MusicPlayer.playEffect(5)
		hide()
		queue_free()

func _on_Area2D_body_exited(body):
	landNum -= 1


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		$BreakBlockPart.emitting = true
