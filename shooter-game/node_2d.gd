extends Node2D

var radius: float
var count: int

func _draw() -> void:
	var l:float = $num_lines.value
	for i in range(l):
		draw_line(Vector2(i*100, 0), Vector2(i*100, 500), Color.BEIGE, 10)
		
	var theta_inc = PI * 2.0/l
	for i in range(l):
		var theta = (theta_inc) * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		draw_circle(Vector2(x, y), radius, Color.CORNSILK, false)
		
	pass
		
func _process(delta: float) -> void:
	queue_redraw()
