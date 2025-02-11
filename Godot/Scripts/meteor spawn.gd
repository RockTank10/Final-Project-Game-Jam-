extends Node

const path_meteor = preload("res://Meteor.tscn")

func _ready():
 
 # Set timer
 $Timer.wait_time = rand_range(1, 3)
 $Timer.connect("timeout", self, "_on_Timer_timeout")
 $Timer.start()
 
 pass
 
func _on_Timer_timeout():
 
 randomize()
  
 var rock = path_meteor.instance()
 var pos   = Vector2()
 
 pos.x = rand_range(0 + 16, get_viewport().get_visible_rect().size.x - 16)
 pos.y = 0 - 16
 
 rock.position = pos
 
 $Container.add_child(rock)
 
 # Set timer again
 $Timer.wait_time = rand_range(1, 3)
 $Timer.start()
 
 pass