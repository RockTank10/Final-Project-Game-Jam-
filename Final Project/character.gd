extends KinematicBody2D

var speed=10
func _ready():
	set_process_input(true)
	#connect("score",WorldNODE,"increase_score")
	
func _input(event):
	if Input.is_action_pressed("up"):
		position.y -= speed
	if Input.is_action_pressed("down"):
		position.y += speed
	if Input.is_action_pressed("left"):
		position.x -= speed
	if Input.is_action_pressed("right"):
		position.x += speed
#func _physics_process(delta):
	#var bodies = get_colliding_bodies()
	#for body in bodies:
		#if body.is_in_group("building"):
		#	emit_signal("death")
		#	queue_free()
		#if body.is_in_group("points"):
	#		emit_signal("score")
	#		body.queue_free()
		#if body.is_in_group("metor"):
			#emit_signal("death2")
			#body.qeue_free()