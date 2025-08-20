extends CharacterBody2D

@export var speed = 150
@export var player: Node2D
@export var karma: int = 0

func _physics_process(delta):
    if karma < 0 and player:
        var dir = (player.global_position - global_position).normalized()
        velocity = dir * speed
        move_and_slide()
