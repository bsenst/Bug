extends Control

onready var scoreText = get_node("ScoreText")
onready var scoreText2 = get_node("ScoreText2")
onready var message = get_node("Message")
var winner = ""

func _ready():
	scoreText.text = "0"
	scoreText2.text = "0"
	message.text = ""

func restart():
	message.text = "Restarting, " + winner + " won."
	yield(get_tree().create_timer(3.0), "timeout")
	get_tree().reload_current_scene()
	
func set_score_text (score):
	scoreText.text = str(score)
	if score > 20:
		winner = "You"
		restart()

func set_score_text2 (score):
	scoreText2.text = str(score)
	if score > 20:
		winner = "Bug"
		restart()
