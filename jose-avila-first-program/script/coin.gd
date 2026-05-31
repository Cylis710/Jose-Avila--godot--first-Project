extends Area2D

var coin = 1

func _on_body_entered(body: CharacterBody2D) -> void:
	print("moneys! +1")
	queue_free()
	body.coins
