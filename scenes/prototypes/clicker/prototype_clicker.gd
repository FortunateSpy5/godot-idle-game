## A clicker prototype creating stardust
class_name PrototypeClicker extends Control

## Reference to the label displaying the cuurent amount of stardust
@export var label : Label
## Reference to the User Interface
@export var user_interface : UserInterface
## View reference
@export var view : UserInterface.Views

## Current amount of stardust
var stardust : int = 0

## Initialize the label at the start
func _ready() -> void:
	update_label_text()
	user_interface.navigation_reuested.connect(_on_navigation_request)

## Create 1 stardust
func create_stardust() -> void:
	stardust += 1
	update_label_text()

## Update the label to display updated text
func update_label_text() -> void:
	label.text = "Stardust: %s" %stardust

## Triggered when the create stardust button is pressed
func _on_button_pressed() -> void:
	create_stardust()

## Watch for navigation requests and react accordingly
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	visible = requested_view == view
