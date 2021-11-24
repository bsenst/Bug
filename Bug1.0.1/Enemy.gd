extends KinematicBody2D

onready var ui = get_node("/root/MainScene/UI")
onready var main = get_node("/root/MainScene")

# stats
var score : int = 0

# physics
var speed : int = 300

var vel : Vector2 = Vector2()

# components
onready var sprite = $Sprite

func _physics_process(delta):
	
	# reset horizontal velocity
	vel.x = 0
	vel.y = 0

	var target = main.get_children()[-1].position
	
	if target.x-10 < position.x: # move_left
		vel.x -= speed
	if target.x > position.x: # move_right
		vel.x += speed
	if target.y-10 < position.y: # move_up
		vel.y -= speed
	if target.y > position.y: # move_down
		vel.y += speed
	
	# applying the velocity
	vel = move_and_slide(vel)

func collect_sugar (value):
	score += value
	ui.set_score_text2(score)
