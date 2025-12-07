## Displays the current amount of stardust available
class_name StardustLabel extends Label

## Connecting signals
func _ready() -> void:
	update_text()
	HandlerStardust.ref.stardust_created.connect(update_text)
	HandlerStardust.ref.stardust_consumed.connect(update_text)

func update_text(_quantity : int = -1) -> void:
	text = "Stardust: %s" %HandlerStardust.ref.stardust()
	
