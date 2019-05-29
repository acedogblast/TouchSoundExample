extends Node

# In this example the Button node has a child node that allows the sound to be played on a touch screen device.
# Note that the TouchScreenButton node is invisable.

func _process(delta):
	#if an 'ui_accept' Input event occues play the sound.
	if Input.is_action_just_pressed("ui_accept"):
		$AudioStreamPlayer.play()

func _on_TouchScreenButton_pressed():
	# This is to 'press' the event.
	Input.action_press("ui_accept")
	pass


func _on_TouchScreenButton_released():
	# This is to 'release' the event.
	Input.action_release("ui_accept")
	pass

func _on_Buton_pressed():
	# This is only used on testing on the desktop.
	# This is not used on mobile.
	Input.action_press("ui_accept")
	print("pressed")
	pass # Replace with function body.
