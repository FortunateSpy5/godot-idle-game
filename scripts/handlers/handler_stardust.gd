## Manages stardust and related signals
class_name HandlerStardust extends Node

## Singleton reference
static var ref : HandlerStardust

## Singleton check
func _enter_tree() -> void:
	if not ref:
		ref = self
		return
	queue_free()

## Signal for stardust created
signal stardust_created(quantity : int)

## Signal for stardust consumed
signal stardust_consumed(quantity : int)

## Returns the current amount of stardust available
func stardust() -> int:
	return Game.ref.data.stardust

## Add a specific amount of stardust
func create_stardust(quantity : int) -> void:
	Game.ref.data.stardust += quantity
	stardust_created.emit(quantity)

## Consume a specific amount of stardust
func consume_stardust(quantity : int) -> Error:
	if quantity > Game.ref.data.stardust:
		return Error.FAILED
	Game.ref.data.stardust -= quantity
	stardust_consumed.emit(quantity)
	return Error.OK
