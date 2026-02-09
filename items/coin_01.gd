extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	animation_player.play("Pickup noise")
	print("+1 Token")
	game_manager.add_points()
