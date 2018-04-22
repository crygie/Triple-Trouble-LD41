extends Path2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	$test.set_offset($test.get_offset() + 110 * delta)

