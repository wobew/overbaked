extends CharacterBody2D

const SPEED = 50

func _physics_process(delta):
	velocity.x = -SPEED
	
	move_and_slide()
