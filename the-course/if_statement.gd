extends Node2D

var i = 0
var thera 
var b = 10
var c = 5


func _draw() -> void:
	
	
	
	print("draw called: " + str(i))
	var r = get_viewport_rect()
	var hw = r.size.x / 2
	var hh = r.size.y / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	
	var p = get_viewport().get_mouse_position()
	print(p)
	draw_rect(Rect2(0, 0, r.size.x, r.size.y), Color.BLUE, true, 10, true)
	if p.x < hw and p.y < hh:
		draw_rect(Rect2(0, 0, hw, hh), Color.RED, true, 10, true)
	elif p.x < hw and p.y > hh:
		draw_rect(Rect2(0, hh, hw, hh), Color.RED, true, 10, true)
	elif p.x > hw and p.y < hh:
		draw_rect(Rect2(hw, 0, hw, hh), Color.RED, true, 10, true)
	else:
		draw_rect(Rect2(hw, hh, hw, hh), Color.RED, true, 10, true)

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	queue_redraw()
	pass
