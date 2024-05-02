extends Window

@onready var popup = $PortalWindow

func _on_portal_pressed():
	print("signal received")
	#popup.show() 

func _on_window_close_requested():
	popup.hide()
