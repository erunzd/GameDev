# GameDev
This repository is intended for Game Development Course activities.

# Week 1: Simple Scene with a Moving Node
This activity focuses on creating a basic 3D scene using the Godot Engine. A simple "Hello World" text was displayed using a Label3D node, along with a cube created using a MeshInstance3D with a BoxMesh.

The cube was programmed using GDScript to move left and right along the X-axis within set limits. Continuous rotation was also applied on the Y-axis to demonstrate basic object transformation and real-time updates using the `_process(delta)` function.

## Screenshot
<img width="60%" alt="image" src="https://github.com/user-attachments/assets/cd4ceb86-3eab-454b-82e0-3497095b5a6e" />

# Week 2 – Activity 1: Gameplay Mechanics

This activity focuses on implementing core gameplay mechanics in a 3D environment using Godot Engine. A controllable player character was created using `CharacterBody3D`, with movement handled through custom input mappings supporting both WASD and arrow keys.

Physics-based movement was implemented including gravity, jumping, collision detection, and interaction with static obstacles. A dash/dodge mechanic was added using the Q key, allowing the player to burst forward in the current movement direction. A smooth follow camera system was implemented to track the player, and a respawn system was added to reset the player to a spawn point if they fall off the map.

##Screenshot
<img width="60%" alt="Screenshot 2026-02-20 at 4 18 30 PM" src="https://github.com/user-attachments/assets/b055e00f-8edc-44ee-816e-94f56f5feb0d" />
