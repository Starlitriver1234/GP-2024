extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

	var s:float = 100
	var rs:float = 100
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - s * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, s * delta))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-rs * delta, 0))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(rs * delta, 0))
	pass


@export var power:float = 0
@export var rot_power:float = 360

@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D
