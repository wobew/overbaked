extends CharacterBody2D

const SPEED = 50

func _physics_process(delta):
	velocity.x = -SPEED
	
	if position.x < -500:
		velocity.x = 0
	
	move_and_slide()
