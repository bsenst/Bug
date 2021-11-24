extends StaticBody2D

func _on_Timer_timeout():
	var sugar_scene = load("res://Sugar.tscn")
	var sugar = sugar_scene.instance()
	add_child(sugar)
	var y = (randi() % 400 + 100)
	var x = (randi() % 800 + 100)
	sugar.set_position(Vector2(x, y))
