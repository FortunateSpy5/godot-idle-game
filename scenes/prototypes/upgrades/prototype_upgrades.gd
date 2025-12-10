## A clicker prototype creating stardust
class_name PrototypeUpgrades extends Control

## Reference to the User Interface
@export var user_interface : UserInterface
## View reference
@export var view : UserInterface.Views

## Connect the navigation signal at launch
func _ready() -> void:
	user_interface.navigation_reuested.connect(_on_navigation_request)

## Watch for navigation requests and react accordingly
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	visible = requested_view == view
