extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("jump_key"):
		gameTimer.gameStart = true
		get_tree().change_scene("res://characters/Stage 0.tscn")