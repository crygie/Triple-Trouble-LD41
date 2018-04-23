extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	add_to_group("scenePlayer")
	pass

#func _process(delta):
#	# Update game logic here.
#	pass

func startWalk():
	$Sprite.play("walking")

func stopWalk():
	$Sprite.play("idle")