extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var f:float
	var g:float
	var h:float
	f = 10
	g = 20
	h = 3
	f+= 2
	f = f+2
	g = f-5
	h *= 2
	g = h/3
	var i:int
	var j:int
	var k:int
	
	i= 10
	j = 4
	k = i/j
	print(i)
	print(j)
	print(k)
	
	print(f)
	print(g)
	print(h)
	
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("pos", global_position)
	DebugDraw2D.set_text("pos", rotation)
	DebugDraw2D.set_text("glo_rotation", global_rotation)
	
	
	rotation -=0.1
	position.x +=1
	pass
func_process(delta)
	func_on_area_entered(area: Area2D) -> void:
	print("Collided!")
	if area.name == "wall":
		print(area)
	
	func _ready() -> void:
		var count = 10
		
	for i in range(count):
		var w = wall_scene.instantiate()
		var p = Vector2
	
	print (area)
	
	var explosion:GPUParticles3D = explosion_scene.instantia
	explosion.global_position = area.global_p
	explosion = true
	get_parent().add_child(explosion)
	area_queue_free()
