extends Path2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var saw_speed = 110

func _ready():
	set_process(true)

func _process(delta):
	$test.set_offset($test.get_offset() + saw_speed * delta)