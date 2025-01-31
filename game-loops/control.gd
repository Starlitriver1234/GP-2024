extends Control

const GRID_SIZE: int = 3
const CELL_SIZE: Vector2 = Vector2(100, 100)

func _ready():
	var grid_container = GridContainer.new()
	grid_container.columns = GRID_SIZE
	grid_container.horizontal_separation = 5  # Correct spelling and property name
	grid_container.vertical_separation = 5    # Correct spelling and property name
	add_child(grid_container)

	for _i in range(GRID_SIZE * GRID_SIZE):
		var grid_item = create_grid_item()
		grid_container.add_child(grid_item)

func create_grid_item() -> ColorRect:
	var item = ColorRect.new()
	item.color = Color(randf(), randf(), randf(), 1.0)
	item.min_size = CELL_SIZE  # CRUCIAL: min_size on the ColorRect
	return item
