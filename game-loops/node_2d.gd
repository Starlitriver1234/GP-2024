extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _draw() -> void:
	var r = Rect2(20, 10, 100, 30)
	draw_rect(r, Color.RED, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.GREEN)
	draw_circle(Vector2(500, 500), 100, Color.HOT_PINK, true)
	var start_pos_cir = Vector2(50,100)
	var radius_cir = 10
	var spacing_cir = 20
	
	

	var v = get_viewport_rect()

	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.BISQUE)

	for i in range(10):
		print(i)

	for i in range(10, -1, -1):
		print(i)

	var basket = ["apple", "bananna", "carrot"]

	for f in basket:
		print(f)

	for i in range(basket.size()):
		print(basket[i])
	
	var num_h_lines = 10
	var gap = 50
	var border = 100
	for i in range(num_h_lines):
		draw_line(Vector2(border, border + gap * i), 
		Vector2(v.size.x - border, border + gap * i), Color.BROWN)
	
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
	var num_cir = 10

	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.RED)
		
	for i in range(num_cir):
		draw_circle(start_pos_cir, radius_cir, Color(1, 1, 1))
		start_pos_cir.x += 2 * radius_cir + spacing_cir
		
		

	pass
