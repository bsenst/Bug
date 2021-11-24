extends KinematicBody2D

onready var ui = get_node("/root/MainScene/UI")

# stats
var score : int = 0

# physics
var speed : int = 200

var vel : Vector2 = Vector2()

# components
onready var sprite = $Sprite

func _physics_process(delta):
	
	# reset horizontal velocity
	vel.x = 0
	vel.y = 0

	# movement inputs
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	if Input.is_action_pressed("move_up"):
		vel.y -= speed
	if Input.is_action_pressed("move_down"):
		vel.y += speed
	
	# applying the velocity
	vel = move_and_slide(vel, Vector2.UP)

func collect_sugar (value):
	
	score += value
	ui.set_score_text(score)
