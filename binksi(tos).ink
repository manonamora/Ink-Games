TOWER OF SLEEP #TITLE
a ==manonamora== prototype #TITLE
This game only uses the up and down arrows.  #TITLE
There are also moments where your character will be moved sideways. Please wait until the animation ended to use the arrows again.  #TITLE

-> init

=== init
+ [auto: start game]
    -> start_game("start")

=== start_game(from)
SPAWN_AT(bed-from{from})
Tomorrow is a very important day...

+ [tag: night-sleep]
    ... and you'll end up waking up late.
    Again.
    SPAWN_AT(tower-spawn)
    -> entrance_tower_intro 
    
- 
-> start_game(from)

=== entrance_tower_intro
It always starts the same:
You stand before a tower...
... so tall you can't see it's roof.
-> entrance_tower

=== entrance_tower
+ [tag: tower-entrance]
    Your hand hovers the handle...
    Do you enter the tower?
    ++ [Yes]
        You turn the handle and...
        SPAWN_AT(level-one-start)
        -> level_1_intro
    ++ [No]
        It's not like you have a choice.
-
-> entrance_tower
=== level_1_intro
... find yourself in this seemingly neverending corridor.
-> level_1 

=== level_1
+ [tag: closed-door]
    You know you can't turn around to go back...
    ... because the door is gone too.
    
+ [tag: level-one-end]
    ... with your foot on the edge of everything...
    SPAWN_AT(level-two-start)
    -> level_2_intro
-
-> level_1

=== level_2_intro
... the world shift on itself, and sends you back...
... back right where you started.
-> level_2

=== level_2
+ [tag: closed-door-two]
    And again, turning around does not do you any good.
    
+ [tag: level-two-end]
    ... until you reach the end again.
    SPAWN_AT(level-three-start)
    -> level_3_intro
-
-> level_2

=== level_3_intro
Sometimes, the hall is not quite as straight...
... but forces you to go down a certain path.
-> level_3

=== level_3
//SPAWN_AT(level-three-start)
+ [tag: level-three-choice]
    You never know where you will end up...
    ... or how frightening the dream will turn out...
    So... where will you go?
    ++ [Left]
        {CUTSCENE(level-three-choice, move-left)|}
        -> level_left_intro
    ++ [Right]
        {CUTSCENE(level-three-choice, move-right)|}
        -> level_right_intro
        
-> END

=== level_left_intro
SPAWN_AT(level-left-start)
Ah...
This one again...
{CUTSCENE(level-left-start, correct)|}
-> level_left

=== level_left
+ [tag: respawn-one]
    ... and on...
    SPAWN_AT(respawn-one-boop)

+ [tag: respawn-two]
    ...
    SPAWN_AT(respawn-two-boop)   

+ [tag: level-left-end]
    ... and you never know where you'll end up next...
    SPAWN_AT(level-four-start)
    -> level_four
-
-> level_left

=== level_four
+ [tag: level-four-end]
    You're almost scared to push the door...
    ... but it's not like you can go back...
    SPAWN_AT(level-four-bis)
    -> level_four_bis
-
-> level_four

=== level_four_bis
+ [tag: level-bis-end]
    ... but you can't.
    You don't have another choice.
    Touch the orb?
    ++ [Yes]
        Your fingers graze the glassy item...
        SPAWN_AT(level-three-bis-start)
        -> level_three_bis_intro
    ++ [No]
        Don't you remember? You don't have another choice...
    
-
-> level_four_bis

=== level_three_bis_intro
... and you find yourself back in that room.
As if you'd never left it in the first place.
As if you'd never walked those long corridors...
-> level_three_bis

=== level_three_bis
+ [tag: level-three-bis-choice]
    So... where will you go?
    ++ [Right]
        {CUTSCENE(level-three-choice, move-right)|}
        -> level_right_intro
    ++ [Right]
        {CUTSCENE(level-three-choice, move-right)|}
        -> level_right_intro
        
-
-> level_three_bis

=== level_right_intro
SPAWN_AT(level-right-start)
Uh...
This one is new...
{CUTSCENE(level-right-start, correct)|}
-> level_right

=== level_right
+ [tag: first-walk]
    You've gone through mazes before...
    {CUTSCENE(first-walk, walk-1)|}
+ [tag: second-walk]
    It is a strange one too...
    {CUTSCENE(second-walk, walk-2)|}
+ [tag: third-walk]
    It's as if your dream is leading your somewhere...
    {CUTSCENE(third-walk, walk-3)|}
+ [tag: level-right-end]
    Ah...
    It makes sense now...
    You were avoiding those.
    SPAWN_AT(level-right-two-start)
    -> level_right_two
-
-> level_right


=== level_right_two
+ [tag: level-right-two-fall]
    WHY?
    SPAWN_AT(endspawn)

-
-> level_right_two