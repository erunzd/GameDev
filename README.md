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

## Screenshot
<img width="60%" alt="Screenshot 2026-02-20 at 4 18 30 PM" src="https://github.com/user-attachments/assets/b055e00f-8edc-44ee-816e-94f56f5feb0d" />

# Week 2 – Activity 2: Level Design

In this activity, we focused on basic level design by creating two playable levels for a simple 3D endless runner. Level 1 was designed to be easier, featuring a wider path and fewer traps to help the player understand the mechanics. Level 2 increased the difficulty by adding more traps and tighter spacing, requiring better timing and movement. Traps were implemented using collision detection that restarts the level when the player is caught, and a notification appears when the player enters Level 2 to indicate the progression.

## Screenshot
<img width="60%" alt="Screenshot 2026-03-15 160407" src="https://github.com/user-attachments/assets/fea75669-56b6-4ff6-8430-ecf5e6973867" />
<img width="60%" alt="Screenshot 2026-03-15 161214" src="https://github.com/user-attachments/assets/6ed07175-6a85-4e1e-bb87-c7b059b68618" />

# Week 3 – Activity 1: UI/UX & Audio

In this activity, we enhanced the game by integrating user interface elements and audio feedback. A simple HUD was implemented using CanvasLayer to display level information and failure messages, improving player feedback and clarity. Sound effects such as jump and fail sounds were added using audio players, along with optional background music to create a more immersive experience. These additions helped make the gameplay feel more responsive and engaging.

## Screenshot
<img width="60%" alt="Screenshot 2026-03-20 211254" src="https://github.com/user-attachments/assets/f0110d81-d928-48fb-bbf7-fcb2db36a8f5" />

# Week 3 – Activity 2: AI & Enemies

In this activity, we introduced basic enemy AI to the game. An enemy character was created with simple behaviors including patrolling within a set range, detecting the player using an Area3D, and chasing the player when within range. A separate detection and collision system was used to trigger interactions, allowing the enemy to restart the level upon contact with the player. This demonstrates the use of basic AI patterns and interaction mechanics beyond static obstacles.

## Screenshot
<img width="60%" alt="Screenshot 2026-03-20 211334" src="https://github.com/user-attachments/assets/982616a7-9015-4df9-b960-32b4537db3c2" />
<img width="60%" alt="Screenshot 2026-03-20 211408" src="https://github.com/user-attachments/assets/8ff4bd6f-fe6d-4733-8337-a6233069cbcb" />

# Week 4 – Activity 1: 3D Basics & Optimization
In this activity, we focused on improving the structure and performance of the 3D game. Basic optimization techniques were applied, such as organizing scenes properly, reusing assets through instancing, and adjusting collision shapes and physics settings for better efficiency. These changes helped make the game run more smoothly while maintaining a clean and manageable project structure.

# Week 4 – Activity 2: Multiplayer
In this activity, we implemented a simple local multiplayer system that allows two players to play on the same device using different controls. Each player was assigned unique input mappings and visual identifiers, such as different colors and labels, to distinguish them during gameplay. Both players can move, jump, and interact with the environment, including traps and enemies, demonstrating basic multiplayer interaction within a shared game space.

## Screenshot
<img width="60%" alt="Screenshot 2026-04-09 184937" src="https://github.com/user-attachments/assets/9597a86f-7e10-4071-a763-36d23e995e6a" />
<img width="60%" alt="image" src="https://github.com/user-attachments/assets/02a2dde0-8310-4e71-8be3-6c3a7a069d55" />
<img width="60%" alt="image" src="https://github.com/user-attachments/assets/138e6b6d-2728-4383-8e26-84324491383b" />

