extends KinematicBody2D
onready var target_position=SteeringBehaviourData.get_target_position()
onready var current_position=get_global_position()
var velocity=Vector2()

func _ready():
    pass

func _process(delta):
    current_position=get_global_position()
    target_position=SteeringBehaviourData.get_target_position()
    velocity=(target_position-current_position)
    if(velocity.length()>100):
        move_and_slide(velocity)

    


