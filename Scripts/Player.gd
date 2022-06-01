extends KinematicBody2D

var score : int = 0

var speed : int = 200
var jumpForce : int = 460

var gravity : int = 800

#Vector contains 2 Variables
var vel : Vector2 = Vector2()

onready var sprite : Sprite = get_node("Sprite")

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	#no movement when no button pressed
	vel.x = 0
	#movement inputs
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		
	#apply the velocity
	vel = move_and_slide(vel, Vector2.UP)

	#gravity
	# delta = timeduration between frames
	vel.y += gravity * delta
	
	# jump input
	if Input.is_action_pressed("jump") and is_on_floor():
		vel.y -= jumpForce
	
	#sprite direction
	if vel.x < 0:
		sprite.flip_h = true
	elif vel.x > 0:
		sprite.flip_h = false	
	
func _on_Death_Zone_body_entered(body):
	get_tree().change_scene("res://Scenes/DeathScreen.tscn")

