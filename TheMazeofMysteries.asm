.data
    title: .asciiz "The Maze of Mysteries"
    space: .asciiz "\n"
    storyline1: .asciiz "[ Once upon a time, there was a young man named Kato who loved to explore. While wandering deep in the forest, he stumbled upon a strange door hidden among the trees. Curiosity getting the better of him, he decided to open it. As soon as he did, a strong force pulled him through, and he found himself in a dark place. But beneath him was something soft and squishy, like jelly. To his surprise, everything around him lit up. There were these mushroom-like things that glowed, and even floating jelly creatures that shimmered with light. In the distance, Kato noticed a huge door. It looked majestic. Despite feeling a little scared, he knew he had to find out what was behind it. With each step, his heart beat faster, but he was determined to uncover the secrets of this mysterious place. ]"
    storyline2: .asciiz "[ As Kato approached the majestic door, he was taken aback to see a guard stationed there. But what truly astonished him was that the guard wasn't just any ordinary guard; it was a stone statue that could talk. ]"
    storyline3: .asciiz "[ The door swung open, revealing a shimmering, splendid sight. A grand staircase stretched before you, its entrance marked by a translucent blue barrier. An inscription upon the barrier read, 'Stair locked. Complete the riddle first.' ]"
    stoneguard1: .asciiz " 'Greetings, young man. I am delighted to see you here. I know you have a lot of questions in your mind. But if you want a simple answer, you are in the labyrinth, and this door will lead you to get out of it. However, before you can escape, there are ten levels of this gate. Each level has a riddle to solve. To move to the next level, you must answer the riddle correctly. You are not allowed to have mistake, or it will be game over, and you will be stuck in the labyrinth forever, becoming a human nutrient of this labyrinth.' "
    stoneguard2: .asciiz " 'Good luck, young man. I hope you will answer the riddle correctly. Remember, the truth has a way of finding the light, even when you think you're hidden in the dark.' "
    choice1: .asciiz "Press 1 to Open the door \n"
    choice2: .asciiz "Press 2 to Give up \n"
    continue: .asciiz "- - Type 1 to Continue - -"
    continue2: .asciiz "- - Type a, b, or c to answer - -"
    riddle1: .asciiz "Level 1:  ' I have cities, but no houses. I have mountains, but no rocks. I have water, but no fish. What am I? ' \n a) A painting \n b) A dream \n c) A map"
    riddle2: .asciiz "Level 2:  ' I am always coming, but never arriving. I am always present, but never here. What am I? ' \n a) Tomorrow \n b) The wind \n c) A shadow"
    riddle3: .asciiz "Level 3:  ' I speak without a mouth and hear without ears. I have no body, but I come alive with fear. What am I? ' \n a) A whisper \n b) An echo \n c) A thought"
    riddle4: .asciiz "Level 4:  ' I am full of eyes, but cannot see. I have a head, but cannot think. What am I? ' \n a) A potato \n b) A button \n c) A needle"
    riddle5: .asciiz "Level 5:  ' You can break me without ever touching me. You can lose me without ever owning me. What am I? ' \n a) A heart \n b) A promise \n c) Silence"
    riddle6: .asciiz "Level 6:  ' I am lighter than a feather, yet no man can hold me for five minutes. What am I? ' \n a) Your breath \n b) A thought \n c) Time"
    riddle7: .asciiz "Level 7:  ' I have an eye, but cannot see. I have a wing, but cannot fly. I tell the truth, but have a lie. What am I? ' \n a) A needle and thread \n b) A compass \n c) A clock"
    riddle8: .asciiz "Level 8:  ' I am always hungry and thirsty, but can never be fed or watered. What am I? ' \n a) Fire \n b) The ocean \n c) A black hole"
    riddle9: .asciiz "Level 9:  ' What has to be broken before you can use it? ' \n a) An egg \n b) A promise \n c) A silence"
    riddle10: .asciiz "Level 10:  ' I am always coming, but never arriving. I am always present, but never here. I am always old, and always new. What am I? ' \n a) Time \n b) The future \n c) The past"
    afterlv1: .asciiz " 'Well done!  A map depicts geographical features like cities, mountains, and water bodies, but it doesn't have the physical components that make them up. You may now proceed to the next level.' "
    afterlv2: .asciiz " 'Well done! Tomorrow is a concept that constantly approaches but never truly arrives. It's always on the horizon. You may now proceed to the next level.' "
    afterlv3: .asciiz " 'Well done! A thought can be a form of silent communication and can be triggered by fear. You may now proceed to the next level.' "
    afterlv4: .asciiz " 'Well done! Buttons often have small holes that resemble eyes, but they can't actually see. You may now proceed to the next level.' "
    afterlv5: .asciiz " 'Well done! A promise can be broken even without physical contact, and you can lose someone's trust (having 'lost' a promise) without ever having formally owned it. You may now proceed to the next level.' "
    afterlv6: .asciiz " 'Well done! Your breath is very light, and while you can hold it for a short time, you can't physically hold it indefinitely. You may now proceed to the next level.' "
    afterlv7: .asciiz " 'Well done! A compass has a needle that points north, but it doesn't literally see. It guides direction, which is truthful, but also has a 'north' and 'south' pole, which can be confusing if not understood correctly. You may now proceed to the next level.' "
    afterlv8: .asciiz " 'Well done!  Fire constantly consumes fuel, so it's metaphorically hungry and thirsty, but you can't nourish it with physical food or water. You may now proceed to the next level.' "
    afterlv9: .asciiz " 'Well done!  You need to crack an egg open before you can use its contents for cooking. You may now proceed to the next level.' "
    afterlv10: .asciiz " 'Well done!  Time is a constant flow, always progressing forward (coming but never arriving). It's always present in the moment (present but never here), and constantly creates new moments while leaving old ones behind (always old and always new). 'Congratulations! You've completed all the riddles. You can now get out of the labyrinth.' "
    mc: .asciiz " That’s it, that was so easy "
    end: .asciiz " THE END "
    gameover: .asciiz "\n I'm sorry, but you've reached a game over, and now you'll be stuck in this labyrinth forever."
    over: .asciiz " GAME OVER "
    error: .asciiz "Error, Please Type 1 to Continue \n"

.text
.globl main

main:
    la $a0, title
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, storyline1
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, storyline2
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, stoneguard1
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, stoneguard2
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, choice1
    li $v0, 4
    syscall
    
    la $a0, choice2
    li $v0, 4
    syscall
    
    jal choiceinput
    
    la $a0, storyline3
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle1
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput1
    
    jal print_space
    
    la $a0, afterlv1
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle2
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput2
    
    jal print_space
    
    la $a0, afterlv2
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle3
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput3
    
    jal print_space
    
    la $a0, afterlv3
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle4
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput4
    
    jal print_space
    
    la $a0, afterlv4
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle5
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput5
    
    jal print_space
    
    la $a0, afterlv5
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle6
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput6
    
    jal print_space
    
    la $a0, afterlv6
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle7
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput7
    
    jal print_space
    
    la $a0, afterlv7
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle8
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput8
    
    jal print_space
    
    la $a0, afterlv8
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle9
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput9
    
    jal print_space
    
    la $a0, afterlv9
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, riddle10
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue2
    
    jal print_space
    
    jal riddleinput10
    
    jal print_space
    
    la $a0, afterlv3
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, mc
    li $v0, 4
    syscall
    
    jal print_space
    
    jal print_continue
    
    jal print_space
    
    jal userinput
    
    la $a0, end
    li $v0, 4
    syscall
    
    j exit

print_continue: #Print Continue
    la $a0, continue
    li $v0, 4
    syscall
    jr $ra
    
print_continue2: #Print Continue
    la $a0, continue
    li $v0, 4
    syscall
    jr $ra
    
print_space: #Print Space
    la $a0, space
    li $v0, 4
    syscall
    jr $ra

userinput:
    li $v0, 5
    syscall
    li $t0, 1
    beq $v0, $t0, input_correct

    la $a0, error
    li $v0, 4
    syscall
    j userinput
    
choiceinput:
    li $v0, 5
    syscall
    li $t0, 1
    beq $v0, $t0, input_correct
    
    li $t0, 2
    beq $v0, $t0, input_correct1

    la $a0, error
    li $v0, 4
    syscall
    j choiceinput
    
riddleinput1:
    li $v0, 12
    syscall
    li $t0, 99
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit

riddleinput2:
    li $v0, 12
    syscall
    li $t0, 97
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit
    
riddleinput3:
    li $v0, 12
    syscall
    li $t0, 99
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit

riddleinput4:
    li $v0, 12
    syscall
    li $t0, 98
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit        

riddleinput5:
    li $v0, 12
    syscall
    li $t0, 98
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit                       

riddleinput6:
    li $v0, 12
    syscall
    li $t0, 97
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit                                                                                                

riddleinput7:
    li $v0, 12
    syscall
    li $t0, 98
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit

riddleinput8:
    li $v0, 12
    syscall
    li $t0, 97
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit

riddleinput9:
    li $v0, 12
    syscall
    li $t0, 97
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit

riddleinput10:
    li $v0, 12
    syscall
    li $t0, 97
    beq $v0, $t0, input_correct

    la $a0, gameover
    li $v0, 4
    syscall
    jal exit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
input_correct:
    jr $ra
    
input_correct1:
    la $a0, gameover
    li $v0, 4
    syscall
    jal exit
exit:
    li $v0, 10
    syscall
