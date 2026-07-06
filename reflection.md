# Reflection: 2D Skeletal Animation

## Character Design

I created a simple humanoid character using a spritesheet (`assets/character_pieces.png`) with separate regions for the head (hair, face), torso, arms, and legs. A reference image (`assets/character_complete.png`) shows how the parts fit together.

## Rigging

The character uses a `Skeleton2D` with 11 bones: Hip, Spine, Head, upper/lower arms (L/R), and upper/lower legs (L/R). Each body part is a `Sprite2D` parented to its bone so it moves with the skeleton.

Weight-painted `Polygon2D` meshes are also in the scene (hidden during play) with bone weights assigned for the torso, head, and limbs. These demonstrate skeletal deformation at joints such as the hips and elbows.

## Animations

Two looping animations were built in the `AnimationPlayer`:

- **Idle (2 seconds)** — the character leans slightly forward and back, like breathing.
- **Run (0.55 seconds)** — the character runs in place with leg and arm cycles and a forward lean.

## Controls

A short script (`character_controller.gd`) plays idle on start and switches animations when the player presses **1** (idle) or **2** (run).

## Process

I set up the bone hierarchy in Godot, attached sprites to each bone, painted weights on the polygon meshes, and keyframed bone rotations in the AnimationPlayer. I tested switching between animations and fixed issues where limbs did not reset by adding neutral pose keyframes to the idle animation.

## Challenges

The main challenge was making sure all bones return to a neutral pose when switching back to idle, since Godot only updates properties that are keyframed in the active animation.