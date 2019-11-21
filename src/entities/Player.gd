extends RigidBody2D

var drag_direction
var	first_drag_pos : Vector2
var last_drag_pos : Vector2

func _ready() -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventScreenTouch:
		Engine.time_scale = 0.5
		if event.is_pressed():
			first_drag_pos = event.position
		else:
			Engine.time_scale = 1
			last_drag_pos = event.position
			drag_direction = last_drag_pos.direction_to(first_drag_pos) * 500
			print(drag_direction)
			apply_central_impulse(drag_direction)

func _physics_process(delta: float) -> void:
	pass