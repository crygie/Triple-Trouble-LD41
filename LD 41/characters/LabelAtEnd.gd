extends Label

export var type = 0
var seen = false

func _ready():
	hide()

func _process(delta):
	match type:
		0:
			text = "Congratulations! You have found the treasure!"
		1:
			if gameTimer.gameEnd == false:
				text = "Your finish time is " + gameTimer.getTime()
				gameTimer.gameEnd = true
		2:
			if gameTimer.dogFood == 6:
				text = "You have collected all the dogfood!\nPress Jump to begin the bonus level!"
			if gameTimer.dogFood != 6:
				text = "You have collected " + str(gameTimer.dogFood) + " Dogfood!\nGet all of the dogfood for a secret!\nPress Jump to return to the main menu."
				if Input.is_action_just_released("jump_key") && seen:
					get_tree().change_scene("res://characters/Credits.tscn")
		3:
			text = "You have died " + str(gameTimer.deaths) + " times!"


func _on_Area2D_body_entered(body):
	show()
	seen = true
	
