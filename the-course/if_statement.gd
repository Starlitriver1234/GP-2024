extends Node2D



func _draw() -> void:
	print("draw called: " + str(i))
	var r = get_viewport_rect()
	r.size.x = r.size.x / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	var p = get_viewport().get_mouse_position()
	print(p)
	if p.x < h;
		draw_react(Rect2(0, 0, h, r.size.y), Color.RED, true)
		draw_react(Rect2(0, 0, h, r.size.y), Color.BLUE, true)
	else:
		draw_react(Rect(0, 0, h, r.size.y), Color.BLUE, true, 10, true)
		draw_react(Rect(0, 0, h, r.size.y), Color.YELLOW, true, 10, true)
	if p.x < 10:
		print()
	elif p < 20:
		print()
	else:
		print()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
