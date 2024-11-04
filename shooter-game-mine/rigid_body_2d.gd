extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	var s:float = 100
	var rs:float = 100
	var d:float = 10
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, -s * delta))
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


var f = 10

var can_fire = true;

func _physics_process(delta):
	
	var force = power * -transform.y * f
	
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.player_position = bullet_spawn.player_position
		b.player_rotation = bullet_spawn.player_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
	
	pass
	

func _on_timer_timeout():
	can_fire = true
	pass # Replace with function body.
