extends CharacterBody2D

var speed = 200
var inventory = []
var karma = 0

func _physics_process(delta):
    var dir = Vector2.ZERO
    if Input.is_action_pressed("ui_up"):
        dir.y -= 1
    if Input.is_action_pressed("ui_down"):
        dir.y += 1
    if Input.is_action_pressed("ui_left"):
        dir.x -= 1
    if Input.is_action_pressed("ui_right"):
        dir.x += 1
    velocity = dir.normalized() * speed
    move_and_slide()

func add_item(item):
    inventory.append(item)

func change_karma(amount):
    karma += amount
