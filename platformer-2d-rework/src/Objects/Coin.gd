extends Area2D
class_name Coin
"""
Collectible that disappears when the player touches it.
"""

onready var animation_player: AnimationPlayer = $AnimationPlayer

"""
The Coins only detects collisions with the Player thanks to its collision mask.
This prevents other characters such as enemies from picking up coins.
"""
func _on_body_entered(body: Node) -> void:
	picked()


"""
When the player collides with a coin, the coin plays its 'picked' animation.
The animation takes cares of making the coin disappear, but also deactivates its collisions
and frees it from memory, saving us from writing more complex code.
Click the AnimationPlayer node to see the animation timeline.
"""
func picked() -> void:
	animation_player.play("picked")
