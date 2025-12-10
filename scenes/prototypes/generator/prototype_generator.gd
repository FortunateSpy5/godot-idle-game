## Generator prototype creating stardust every second
class_name PrototypeGenerator extends Control

## Reference to the button starting stardust generation
@export var button : Button
## Reference to the timer
@export var timer : Timer
## Reference to the User Interface
@export var user_interface : UserInterface
## View reference
@export var view : UserInterface.Views

## Connect the navigation signal at launch
func _ready() -> void:
	user_interface.navigation_reuested.connect(_on_navigation_request)

## Create stardust and store it
func create_stardust() -> void:
	HandlerStardust.ref.create_stardust(1)

## Start the timner and disable the button
func begin_generating_stardust() -> void:
	timer.start()
	button.disabled = true

## Triggered when the "Begin generating" button is pressed
func _on_button_pressed() -> void:
	begin_generating_stardust()

## Triggered when the timer times out
func _on_timer_timeout() -> void:
	create_stardust()

## Watch for navigation requests and react accordingly
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	visible = requested_view == view
