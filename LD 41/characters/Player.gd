extends KinematicBody2D

const SPEED = 240
const JUMP_H = 750
const GRAVITY = 30
const UP = Vector2(0, -1)

var movement = Vector2()
var isDead = false

func _ready():
	add_to_group("player")

func death():
	isDead = true
	hide()

func jump():
	movement.y = -JUMP_H

func jump_cut():
	if movement.y < -400:
		movement.y = -400


func _physics_process(delta):
	#print (movement.y)
	if !isDead:
		if Input.is_action_pressed("move_right"):
			if !is_on_floor() && movement.x < 0:
				#movement.x = SPEED - (movement.x * 4)
				movement.x = 0
			else:
				movement.x = SPEED
		elif Input.is_action_pressed("move_left"):
			if !is_on_floor() && movement.x > 0:
				movement.x = 0
			else:
				movement.x = -SPEED
		elif is_on_floor():
			movement.x = 0
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
