extends Node

var counter = 0 

var touch_start_position = Vector2.ZERO
var touch_end_position = Vector2.ZERO

#cambiar _gui_input por _input cuando lo haga online

func _gui_input(event):
	

	# event is InputEventScreenTouch  or
	if  (event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT)  :
		
		if event.pressed:
			
			touch_start_position = event.position
		else:
			touch_end_position = event.position
			var swipe_vector = touch_end_position - touch_start_position
			
			if swipe_vector.length() > 100: # Threshold to avoid accidental swipes
				
				counter -= 1
				
				#if abs(swipe_vector.x) > abs(swipe_vector.y):
					#if swipe_vector.x > 0:
						#print("Swiped right")
					#else:
						#print("Swiped left")
				#else:
					#if swipe_vector.y > 0:
						#print("Swiped down")
					#else:
						#print("Swiped up")
			else:
				counter+=1
				
		if counter < 0:
			counter = 0
			
	$Label.text = str(counter)
