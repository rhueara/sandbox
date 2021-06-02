extends Node2D

const TIMEOUT = 1

var counter: int = 0
var timeout: float = 0

onready var TextNode = get_node("Label")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.
    
func _process(delta):
    if timeout < TIMEOUT:
        timeout += delta
        return
    
    TextNode.text = "Testing " + str(counter)
    counter += 1
    timeout = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass
