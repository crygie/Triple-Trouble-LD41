extends Path2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var saw_speed = 40
export var fast_saw = 400
var pressed = false

func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("jump_key") && pressed == false:
		saw_speed = saw_speed + fast_saw
		pressed = true
	else:
		saw_speed = 40
		pressed = false
	$test.set_offset($test.get_offset() + saw_speed * delta)
