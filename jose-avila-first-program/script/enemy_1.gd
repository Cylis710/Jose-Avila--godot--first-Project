extends AnimatedSprite2D
const speed = 70
var direction = 1
# Called when the node enters the scene tree for the first time.
@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var ray_cast_2d_2: RayCast2D = $RayCast2D2
@onready var timer: Timer = $Area2D/Timer
@onready var player: CharacterBody2D = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _process(delta):
	if ray_cast_2d.is_colliding():
		direction = 1
		print("oww")
	if ray_cast_2d_2.is_colliding():
		direction = -1
	position.x += direction * speed * delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
