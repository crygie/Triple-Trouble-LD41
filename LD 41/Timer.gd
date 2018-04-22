extends Node

var gameStart = false
var gameEnd = false
var time_start = 0
var time_now = 0
var dogFood = 0

func _ready():
	set_process(true)

func _process(delta):
	if gameStart:
		time_start = OS.get_unix_time()
		print("The timer is working boys")
		gameStart = false

func getTime():
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	print (str_elapsed)