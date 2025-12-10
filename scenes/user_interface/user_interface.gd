## Main class controlling the User Interface
class_name UserInterface extends Control

## List of views
enum Views {
	PROTOTYPE_GENERATOR,
	PROTOTYPE_CLICKER,
	PROTOTYPE_UPGRADES,
}

## Initialize the correct view at the start
func _ready() -> void:
	navigation_reuested.emit(Views.PROTOTYPE_GENERATOR)

## Emitted when something requested navigation. Includes the view target.
signal navigation_reuested(view : Views)

## Triggered when the prototype generator is clicked
func _on_prototype_generator_link_pressed() -> void:
	navigation_reuested.emit(Views.PROTOTYPE_GENERATOR)

## Triggered when the prototype clicker is clicked
func _on_prototype_clicker_link_pressed() -> void:
	navigation_reuested.emit(Views.PROTOTYPE_CLICKER)

## Triggered when the prototype upgrades is clicked
func _on_prototype_upgrades_link_pressed() -> void:
	navigation_reuested.emit(Views.PROTOTYPE_UPGRADES)
