extends Sprite2D


# Called when the node enters the scene tree for the first time.
speed: float= 200
func _ready() -> void:
	var to_player = player.global_position - global position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
