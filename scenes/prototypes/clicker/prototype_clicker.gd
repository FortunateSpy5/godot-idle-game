## A clicker prototype creating stardust
class_name PrototypeClicker extends Control

## Reference to the User Interface
@export var user_interface : UserInterface
## View reference
@export var view : UserInterface.Views

## Initialize the label at the start
func _ready() -> void:
	user_interface.navigation_reuested.connect(_on_navigation_request)

## Create 1 stardust
func create_stardust() -> void:
	HandlerStardust.ref.create_stardust(1)

## Triggered when the create stardust button is pressed
func _on_button_pressed() -> void:
	create_stardust()

## Watch for navigation requests and react accordingly
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	visible = requested_view == view
