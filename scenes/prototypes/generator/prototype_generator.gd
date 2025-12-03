## Generator prototype creating stardust every second
class_name PrototypeGenerator extends Control

## Reference to the label displaying current amount of stardust
@export var label : Label
## Reference to the button starting stardust generation
@export var button : Button
## Reference to the timer
@export var timer : Timer

## Current amount of stardust in storage
var stardust : int

## Initialize the label
func _ready() -> void:
	update_label_text()

## Create stardust and store it
func create_stardust() -> void:
	stardust += 1
	update_label_text()

## Updates label text to match the current amount in storage
func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust

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
