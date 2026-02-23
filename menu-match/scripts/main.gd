extends Node2D

var strawb_scene: PackedScene = preload("res://scenes/strawberry.tscn")

var grid_width = 6 # inner arrays (row)
var grid_height = 5 # Wrapper array

var grid = []

var grid_node: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	grid_node = find_child("grid")
	for y in grid_height:
		var row = []
		for x in grid_width:
			var strawb: Node2D = strawb_scene.instantiate()
			strawb.set_position(Vector2(x*75,y*75))
			row.append(strawb)
			grid_node.add_child(strawb)
		grid.append(row)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
