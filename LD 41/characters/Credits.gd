extends Node

var creditsOver = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	if Input.is_action_just_pressed("jump_key") && creditsOver:
		get_tree().change_scene("res://characters/Menu.tscn")


func _on_Area2D_body_entered(body):
	creditsOver = true