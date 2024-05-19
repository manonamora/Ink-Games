I PROMISE I AM WORKING ON THE GAME #TITLE
A ==manonamora== shenanigan #TITLE
Use the arrow keys to move the sprite or go through the text. #TITLE
Some elements can/should be interacted more than once. #TITLE

-> init

=== init
+ [auto: start game]
    -> start_game("start")

=== start_game(from)
\~\~Humph\~~...
Here we go again...

+ [tag: computer-start]
    \~\~Loging-in...\~\~
    \~\~...\~\~
    SPAWN_AT(desktop-start)
    -> desktop_start 
- 
-> start_game(from)

=== desktop_start
{Welcome Manon!|}
+ [tag: netflix]
    I guess another episode wouldn't hurt...
    ...and it's for research, right?
    -> netflix_page
    
+ [tag: assets]
    Let's check the notes again, refreching the memory abit
    SPAWN_AT(assets-start)
    -> assets_page
    
+ [tag: writing]
    Mmh... Maybe I could try to add at least a sentence.
    It's been so long, it's becoming embarrassing...
    SPAWN_AT(writing-start)
    -> writing_page
    
+ [tag: coding]
    There's a lot that needs fixing.
    And I should hunt that bug down too...
    SPAWN_AT(vscode-start)
    -> vscode_page
    
+ [tag: internet]
    Or I could do some research... 
    For writing purposes, of course.
    {\~\~...\~\~|}
    {Oh... I guess an update first?|}
    SPAWN_AT(internet-start)
    -> internet_page
    
+ [tag: discord]
    I should check on the server real quick...
    SPAWN_AT(discord-start)
    -> discord_page
    
+ [tag: close-computer]
    SPAWN_AT(ending-page)
    -> DONE
-
-> desktop_start

=== assets_page
+ [tag: return-to-desktop]
    SPAWN_AT(desktop-start)
    -> desktop_start
    
+ [tag: close-computer]
    SPAWN_AT(ending-page)
    -> DONE
-
-> assets_page

=== writing_page
{cycle:
    - come on, brain... you can do it. we've had blank pages before, and we've filled them up then. we can do it again!
    - no more procrastination, we're here to write. they're waiting for that chapter...
    - it's been collecting dust for months... least i can do is write at least a few words.
    - i already have everything i need to make it work! why isn't it WORKING?!
}
+ [tag:next-chapter]
    let's get to the actual next chapter.
    that draft won't write itself...
    SPAWN_AT(next-chapter-page)
    
+ [tag:previous-chapter]
    maybe if I re-read my previous stuff... it will jumpstart my brain?
    SPAWN_AT(previous-chapter-page)
    
+ [tag: return-to-desktop]
    I... I think I deserve a break.
    SPAWN_AT(desktop-start)
    -> desktop_start
    
+ [tag: close-computer]
    Nope. Nope nope nope... I'm out. 
    SPAWN_AT(ending-page)
    -> DONE
-
-> writing_page

=== vscode_page
{shuffle :
    - come on... you can do it... you've done it before...
    - keep it together... you can't break down now.
    - one bug, just oooooone little bug.
}
+ [tag: return-to-desktop]
    I... I think I deserve a break.
    SPAWN_AT(desktop-start)
    -> desktop_start
    
+ [tag: close-computer]
    Nope. Nope nope nope... I'm out. 
    SPAWN_AT(ending-page)
    -> DONE
-
-> vscode_page

=== netflix_page
{cycle:
    - >>> CUTSCENE(netflix, show) 
    hmmh yes, this is really what I imagine that scene should look like...
    - >>> CUTSCENE(netflix, show2)
    the costumes are exquisite!
    the story... not so much.
    mmh... how wonder how the Count would have behaved...
    - >>> CUTSCENE(netflix, show3)
    ooooh the drama! and the longing...
    what if I did a flash back...
    oh, yiekes, no... not the corset on the SKIN!
}
\~\~ an hour later \~\~
>>> CUTSCENE(netflix, hide)
-> desktop_start

=== discord_page
{cycle:
    - Oh... Nothing, really?
        I guess it's good? I can't just chat and...
    - Mmhh... No, really nothing.
        Is that a sign I should not be trying to procrastinate?
    - I swear we talked about this before... Where was it?
    - Some chatter. Civil conversations. Interesting ones... Nothing I could add to though...
    - Oh! A new game was released! I should-
        No, no... writing first...
    - Notifications for... general announcements. Not important...
}
-> desktop_start

=== internet_page
{once:Firefox has updated!}
+ [tag: credits]
    ITS >THE CREDITS< BICH!
    this abomination was made by manonamora
    \~ using binksi (bitsy + ink) by smwhr
    \~ the VN template by PRINCESS INTERNET CAFé
    \~ pictures from "cottonbro studio" and "Antonio Friedemann", edited in the "Game Boy Camera" from imagenerator
    \~ sweat and tears and hurt wrists (pixel art, man...)
    -> internet_page
+ [tag: tumblr-page]
    -> tumblr_ask
+ [tag: forum-page]
    -> forum_threads
    
+ [tag: return-to-desktop]
    SPAWN_AT(desktop-start)
    -> desktop_start
    
+ [tag: close-computer]
    SPAWN_AT(ending-page)
    -> DONE
-
-> internet_page

=== tumblr_ask
{once:
    - Hmmm... Pretty quiet... Oh... I got some asks!
    - Still some left.
    - Should I even reply to them?
    - Maybe that's enough for today...
}
* [Read Anonymous Message]
    "is this project dead? like tell us so we dont have to wait" for nothing
    ** [Snarky Response]
        Yes, of course, it has to be dead, because I never mention wanting to get back to it, and have stopped making any progress, and removed any content regarding the game.
            Do you even read my logs, Anon?
        *** [Post Answer]
            That'll shut them up.
            -> tumblr_ask
        *** [Delete the whole thing]
            Not worth it.
            -> tumblr_ask
    ** [Sincere Response]
        No, Anon. It's not dead. I am trying to hard to work on this, but I've honestly been struggling a lot with it. I love the characters and the setting, and there's a lot I want to explore. But I... I just can't make progress on it. I keep trying, again and again, and still...
        It's blank page all the way down. And I feel bad for all of you following, but it's just... I'm sorry for disappointing everyone.
        *** [Post Answer]
            They'll think I'm making excuses again. And someone else will give me grief for it...
            -> tumblr_ask
        *** [Delete the whole thing]
            Gosh... I sound so whiny and manipulative, don't I?
            -> tumblr_ask
    ** [Delete Ask]
        Best to not engage with it. Or I'll never hear the end of it.
        -> tumblr_ask
* [Read Anonymous Message]
    "lol, called it on you losing the comp"
    ** [Snarky Response]
        And you think you could have done better?
        [insert eyeroll gif]
        *** [Post Answer]
            I know I shouldn't feed the trolls, but I need it right now!
            -> tumblr_ask
        *** [Delete the whole thing]
            They don't deserve my funny gifs.
            -> tumblr_ask
    ** [Deflect and Redirect]
        Like I even had the chance to begin with! Didn't you see how stacked it was? Really outstanding games by amazing authors! They totally deserved it, don't you think?
        *** [Post Answer]
            I hope I didn't do too much...
            -> tumblr_ask
        *** [Delete the whole thing]
            Ugh, no... they don't deserve it.
            -> tumblr_ask
    ** [Delete and Block]
        This is the third competition in a row I got this message. Enough is enough...
        ... I hope they don't use try with another account.
        -> tumblr_ask
* [Read Anonymous Messages]
    "ugh i dont care about your weird mini stuff... just work on your actual game!"
    Uhhhh, nope, not answering that.
    "hey, my cat needs surgery and i don't have-"
    That's a well known scam, and... yup, their blog is empty as heck.
    "hi Manis, i saw your game DADAS on your itch profile and i was wondering if you wanted to try our new platform-"
    Nope, AI/Crypto bs... also, can't you even spell my games right? OR MY NAME?
    Welp... delete, delete, delete...
    -> tumblr_ask
+ [Close Inbox]
    I should get back to the project...
    -> internet_page
-
-> tumblr_ask

== forum_threads
{once: 
    - I'm sure it will be fine if I just checked a few threads, right? It's not like I'll end up spending the whole afternoon...
    - Huh, that didn't take <that> long. Maybe I can check something else.
    - Oh, I forgot about that! Let's see if...
    - I should stop procrastinating...
}
* [Read Thread]
    hmm... oh, that's interesting...
    well...
    ok...
    hmm... what...
    let's... let's not.
    -> forum_threads
* [Answer Question]
    let's see... 
    here's what you could do... 
    and oh, this might be useful...
    you'd be good to go!
    ...
    And good deed of the day done!
    -> forum_threads
* [Post Something]
    maybe i should not today... i don't have a question or anything to share...
    maybe tomorrow... when i've managed to work on the game.
    -> forum_threads
+ [Close page]
    -> internet_page
-
-> forum_threads
