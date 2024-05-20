extends CharacterBody2D

var activo = false
	
func _physics_process(delta):
	
	if !activo:
		scale.x = 0
	
	if activo:
		print("soldado activado")
		scale.x = 4
		
	
	move_and_slide()
