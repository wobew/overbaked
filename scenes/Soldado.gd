extends CharacterBody2D

var activo = false
	
func _physics_process(delta):
	
	if !activo:
		visible = false
	
	if activo:
		visible = true
		
	
	move_and_slide()
