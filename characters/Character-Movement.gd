extends CharacterBody2D

@export var speed = 100

@onready var animation_tree : AnimationTree = $AnimationTree

var direction : Vector2 = Vector2.ZERO

func get_input(): # movement
	direction = Input.get_vector("left", "right", "up", "down").normalized()
	velocity = direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func _process(delta):
	update_animation_parameters()

func update_animation_parameters(): # animation
	if(velocity == Vector2.ZERO): 
		animation_tree ["parameters/conditions/idle"] = true
		animation_tree ["parameters/conditions/is_moving"] = false
	else:
		animation_tree ["parameters/conditions/idle"] = false
		animation_tree ["parameters/conditions/is_moving"] = true
	animation_tree ["parameters/Idle/blend_position"] = direction
	animation_tree ["parameters/Move/blend_position"] = direction
