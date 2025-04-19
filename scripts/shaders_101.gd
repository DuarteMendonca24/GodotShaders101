extends Node2D

@export var spirte_2d: Sprite2D = null

func _process(delta):
	if Input.is_action_just_pressed("set_speed"):
		var new_speed: float = randf_range(1.0,10.0)
		spirte_2d.material.set_shader_parameter("my_float", new_speed)

	if Input.is_action_just_pressed("set_color"):
		var new_color: Color = Color(randf(),randf(),randf(),1.0)
		spirte_2d.material.set_shader_parameter("my_color", new_color)

	#var my_float: float = spirte_2d.material.get_shader_parameter("my_float")
	#print(my_float)
