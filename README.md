# The Maze of Mysteries

## Overview

*The Maze of Mysteries* is a text-based adventure written in assembly language. It follows the story of Kato, a curious explorer who stumbles upon a mysterious door in the forest. Upon opening it, Kato is transported to a strange and dark world filled with challenges, puzzles, and unexpected discoveries. Players navigate this maze-like world, uncovering its secrets while guiding Kato to safety.

## Language

The project is written in *MIPS Assembly*, a low-level programming language often used for educational purposes to demonstrate concepts of computer architecture and programming at the hardware level.

## Logic of the Code

1. *Initialization*: The .data section defines the story text, prompts, and other messages used during gameplay.
2. *Story Progression*: The .text section handles the main logic, starting with the introduction of Kato’s story.
3. *Player Interaction*: Uses system calls to display text and take input from the user to navigate the maze and make decisions.
4. *Decision Making*: Implements conditional branching to handle player choices and determine the outcome of each decision.
5. *Game States*: Tracks progress using memory registers, allowing the game to respond dynamically to player actions.

## Developers

This project was developed by:

- *Lumod, Kenneth L.*
- **Dubria, Pamela Floriel**&#x20;

## How to Run

1. Install a MIPS simulator such as *SPIM* or *MARS*.
2. Load the TheMazeofMysteries.asm file into the simulator.
3. Assemble the code and run it to begin the adventure.
4. Follow the on-screen prompts to guide Kato through the maze.

## Acknowledgments

Special thanks to educators and resources that provided guidance in MIPS Assembly programming and storytelling in interactive fiction.
