extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var gravity = 0

@onready var animation_tree = $"../AnimationTree"

@onready var playback = animation_tree.get("parameters/playback")
@onready var cat = $"Cat-sheet"



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	var move_input = Input.get_axis("ui_left", "ui_right")
	velocity.x = move_toward(velocity.x, move_input * SPEED, SPEED)
	
	var move_input_y = Input.get_axis("ui_up", "ui_down")
	velocity.y = move_toward(velocity.y, move_input_y * SPEED, SPEED)
	
	move_and_slide()
	
	if abs(velocity.x) > 1 or move_input:
		playback.travel("caminar2")
	else:
		playback.travel("quieto")
		
	if move_input:
		cat.scale.x = 4 * move_input
