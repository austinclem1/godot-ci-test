tool

extends KinematicBody2D

const WIDTH = 30
const HEIGHT = 30
const TOP_LEFT_CORNER = Vector2(-WIDTH / 2, -HEIGHT / 2)
const GFX_RECT = Rect2(TOP_LEFT_CORNER, Vector2(WIDTH, HEIGHT))

var velocity = Vector2(300, 200)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# func _process(delta):
# pass

func _physics_process(delta):
	if not Engine.editor_hint:
		var collision = move_and_collide(velocity * delta)
		if collision:
			velocity = velocity.bounce(collision.normal)

func _draw():
	draw_rect(GFX_RECT, Color.white)
