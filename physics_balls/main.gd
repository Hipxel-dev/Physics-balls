extends Node2D

var width = 5
var height = 320

var dot = preload("res://dot.tscn")

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_accept"):
		var dot_inst = dot.instance()
		dot_inst.position = get_global_mouse_position()
		dot_inst.point_pos = get_global_mouse_position()
		add_child(dot_inst)

	if Input.is_action_pressed("click"):
		var dots = get_tree().get_nodes_in_group("dot")
		for i in dots:
			if i.position.distance_squared_to(get_global_mouse_position()) < 1500:
				i.linear_velocity -= (get_global_mouse_position() - i.position) 
