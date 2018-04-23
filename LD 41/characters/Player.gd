extends KinematicBody2D

const SPEED = 240
const JUMP_H = 750
const GRAVITY = 30
const UP = Vector2(0, -1)

export (PackedScene) var deathScreen
var movement = Vector2()
var isDead = false
var keyGot = false
var hasDogFood = false
var played = false

func _ready():
	add_to_group("player")
	$Blood.hide()

func death():
	$Sprite.hide()
	isDead = true
	if played == false:
		gameTimer.deaths += 1
		if hasDogFood:
			gameTimer.dogFood -= 1
		played = true
		var deathscreen = deathScreen.instance()
		add_child(deathscreen)
		$Blood.show()
		$Blood.restart()
	#queue_free()

func jump():
	movement.y = -JUMP_H

func jump_cut():
	if movement.y < -400:
		movement.y = -400


func _physics_process(delta):
	if !isDead:
		if Input.is_action_pressed("move_right"):
			if !is_on_floor() && movement.x < 0:
				movement.x = 0
			else:
				movement.x = SPEED
				$Sprite.flip_h = false
				$Sprite.play("walking")
		elif Input.is_action_pressed("move_left"):
			if !is_on_floor() && movement.x > 0:
				movement.x = 0
			else:
				movement.x = -SPEED
				$Sprite.flip_h = true
				$Sprite.play("walking")
		elif is_on_floor():
			movement.x = 0
			$Sprite.play("idle")
		else:
			if movement.x > 0:
				movement.x -= (movement.x - 150)
			elif movement.x < 0:
				movement.x -= (movement.x + 150)
		
		
		if Input.is_action_just_released("jump_key"):
			jump_cut()
		
		if is_on_floor():
			if Input.is_action_just_pressed("jump_key"):
				jump()
			else:
				movement.y = 30
		else:
			movement.y += GRAVITY

		if is_on_ceiling():
			movement.y = 0
		if is_on_wall():
			movement.x = 0
	
	move_and_slide(movement, UP)
