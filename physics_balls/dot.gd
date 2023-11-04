extends RigidBody2D

var point_pos = Vector2.ZERO
onready var line = $Line2D

func _physics_process(delta: float) -> void:
	line.points[1] = point_pos - position
	
	linear_velocity += (point_pos - position)
	
