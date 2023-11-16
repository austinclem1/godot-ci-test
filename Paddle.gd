tool

extends KinematicBody2D

const WIDTH = 20
const HEIGHT = 160
const SPEED = 300

const TOP_LEFT_CORNER = Vector2(-WIDTH / 2, -HEIGHT / 2)
const GFX_RECT = Rect2(TOP_LEFT_CORNER, Vector2(WIDTH, HEIGHT))

func _ready():
	pass


#func _process(delta):
#	pass

func _physics_process(delta):
	if not Engine.editor_hint:
		var move_dir = Input.get_axis("move_up", "move_down") * Vector2.DOWN
#warning-ignore:unused_variable
		var collision = move_and_collide(move_dir * SPEED * delta)
		# move_and_slide(move_dir * SPEED)

func _draw():
	draw_rect(GFX_RECT, Color.white)
