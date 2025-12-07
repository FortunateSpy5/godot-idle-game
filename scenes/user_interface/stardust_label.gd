## Displays the current amount of stardust available
class_name StardustLabel extends Label

## Temporary function to update the label
func _process(_delta: float) -> void:
	update_text()

func update_text() -> void:
	text = "Stardust: %s" %Game.ref.data.stardust
