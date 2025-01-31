extends Node2D

func _ready():
	queue_redraw()  # Trigger the _draw() function

func _draw():
	var center = Vector2(400, 300)  # Center of the spiral
	var angle = 0  # Starting angle
	var radius = 10  # Initial radius
	var angle_increment = 10  # Angle increment per step
	var radius_increment = 5  # Radius increment per step

	for i in range(100):  # Number of steps
		# Convert polar coordinates to Cartesian coordinates
		var x = center.x + radius * cos(deg_to_rad(angle))
		var y = center.y + radius * sin(deg_to_rad(angle))
		# Draw a small circle (dot) at the calculated position
		draw_circle(Vector2(x, y), 2, Color.WHITE)  # White dot
		# Increment the angle and radius
		angle += angle_increment
		radius += radius_increment
