extends KinematicBody2D

export var WALKING_SPEED = 100

enum S { WALKING, STANDING, BEING_BOOSTED }

var state = S.STANDING

func walk_right(_delta):
	pass

func stand(_delta):
	pass

func boost_upwards(_delta):
	pass

func _physics_process(delta):
	match state:
		S.WALKING:
			walk_right(delta)
		S.STANDING:
			stand(delta)
		S.BEING_BOOSTED:
			boost_upwards(delta)

func _ready():
	pass # Replace with function body.