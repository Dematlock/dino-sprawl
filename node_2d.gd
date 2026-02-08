extends Node2D

const SPEED = 100

var deathcollision = false
var area2d = false
var direction = 1

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	
	position.x += delta * direction * SPEED
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	queue_free()

func _on_death_body_entered(body: Node2D) -> void:
	$Area2D/CollisionShape2D.set_deferred("disabled", true)
