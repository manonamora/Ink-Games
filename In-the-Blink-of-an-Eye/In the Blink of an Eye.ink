# theme: dark
# author: manonamora
VAR walking_no_stop = false
VAR open_eyes_again = false
VAR touch_wake = false
VAR smell_wake = false
VAR listen_wake = false
VAR is_this_a_dream = false
VAR beach_questions = false
VAR beach_bowl = false
VAR beach_bowl_refuse = false
VAR beach_look_around = false
VAR beach_look_santana = false
VAR beach_look_you = false
VAR question_num = 0

* [English]
    -> Intro_en
* [Français]
    -> Intro_fr

=== Intro_en ===
    Santana’s breath cut short at the sight of the barrel pointed at him. The gun, though small, was nonetheless loaded and still smelt of burnt powder. He heard a…

    * <i>Click.</i>
        -> Flashback_en 

=== Flashback_en===
    <center>Some time earlier</center>
    
    Paula walked through the town, aimless. Since David had chosen to “change direction”, she did not know what to do with all that newly found free time. She’d usually spend all of it with him, doing things for him, taking care of him… leaving little for herself. Though she had now passed many shops and cafés, each offering distractions from thinking about him, she still chould not decide on what to do. Every thought she had focused on one thing, and one only: hoping David would call her back, promising it had all been a mistake and he wanted her back.
    
    In front of an antique shop, a man bumped into her.
    
    * [Enter the shop.]
        -> Flashback_enter_en
        
    * [Continue walking.]
        ~ walking_no_stop = true
        -> Flashback_walk_en
        
    * [Ask the man to apologise.]
        “Hey!” she exclaimed, spinning. “What’s wrong with you?”

        The man turned back, looked at her, shrugged, and went on his way.

        “Hey, you!” she followed him, extending her arm to stop him. “I said–”

        He grabbed her wrist, twisting it a little. Her eyes meeting his, Paula’s heart skipped a beat. They looked so much like <i>his</i>, <i>his</i> mortifying dark pupils glaring down at her when she made him angry. She blinked.

        “W-what?”

        The man had disappeared.

        ** [Enter the shop.]
            -> Flashback_enter_en
            
        ** [Continue walking.]
            -> Flashback_walk_en

    * [Apologise to the man.]
        “Sorry,” she mumbled under her breath.

        She glanced at the man, who had not cared to turn back, and let out a disappointed sigh when she realised he was not <i>him</i>. She bit her lip, trying to contain her tears. Of course, it could not have been <i>him</i>… <i>He</i> had flown out of the country days ago. Paula swore at herself.

        ** [Enter the shop.]
            -> Flashback_enter_en
            
        ** [Continue walking.]
            -> Flashback_walk_en

=== Flashback_enter_en ===
    <i>Ding-ling</i>

    The sound of the bell echoed in the stuffy, lifeless room. The musty and dusty air assailed Paula’s sensitive nostrils. She sneezed. This sound too echoed, and it too failed to get a response. Were it any other day, this absence would alarm her.

    “Hello?” she mindlessly asked.

    Silence still reigned, as she walked around the room. Browsing through the strange and decrepit articles, Paula realised this was the first time she’d entered a shop like this one. <i>He</i> never liked this kind of places, and complained when her eyes would stop at their vitrine. While she wondered about the past of items left behind, <i>he</i> found the whole thing quite macabre.

    Her finger brushed… <>

    * a timeless clock, with a missing hand.
        -> Travel_en
    * a broken sword, its hilt gone.
        -> Travel_en
    * a wool scarf, partly eaten by moths.
        -> Travel_en

=== Flashback_walk_en ===
    {walking_no_stop:
       As if she barely felt it, Paula continued walking down the street, completely numb. She could not care less about what could happen to her anymore. Not since she realised <i>he</i> had cared so little about her.
    - else:
        Flustered, Paula let her feet guide her down the street, continuing her walk. She hated seeing <i>him</i> everywhere she went, but kept looking for <i>him</i> around her nonetheless, hoping she’d spot a sign somewhere.
    }
    “Huh?”

    Though she had walked for a few hours now, Paula was back once more in front of the antique store.

    * [Enter the shop.]
        -> Flashback_enter_en

=== Travel_en ===
    Her eyelids felt heavy, falling before she could notice it. Condemning her sight to total darkness.

    * [Open eyes.]
        -> Now_beach_en

=== Now_beach_en ===
    Paula tried opening her eyes, but found some resistance with her lids. She took it as a sign of hangover, one she had been nursing many of her mornings since David left. Still, she continued to put in the effort – staying in bed any longer would not arrange things. Still, they would not budge.

    “Ah…” a deep voice exclaimed.

    The sudden alien sound shook Paula, who until now had been completely alone. She wondered if the owner had finally showed. But her eyes would still not open.

    “Looks like she’s finally waking up.”

    More than this unknown presence, the words spoken made her uneasy. She knew she’d been spacing out lately, but she could not believe she’d fallen asleep inside a store!

    “Well, at least, she’s still kicking,” the voice sighed.

    -> Now_beach_options_en

=== Now_beach_options_en===
    * {not open_eyes_again} [Open eyes again.]
        ~ open_eyes_again = true
        Paula tried once more to open her eyes... in vain.
        -> Now_beach_options_en
        
    * {not touch_wake} [Touch.]
        Paula did her best to focus on anything that touched her skin. She recognised the rugged feeling of her pants and the softer touch of her shirt. Strangely, her socks seemed wet, and her feet were not restrained by shoes anymore. More importantly, under her hands, a granular and coarse texture tickled between her fingers.

        <i>Sand?!</i>
        ~ touch_wake = true
        -> Now_beach_options_en
        
    * {not smell_wake} [Smell.]
        Out of all her senses, Paula trusted her sense of smell the most. From finding the most delectable place to eat, or warning her of dangerous situations, her nose was her most formidable ally, wherever she went. She only needed a whiff to feel comfortable… or take off.

        The air around her smelt salty, and wet, with a hint of burnt wood – <i>cedar</i>. There were also traces of cooked food, though she could not say what. It for sure made her hungry.
        ~ smell_wake = true
        -> Now_beach_options_en
        
    * {not listen_wake} [Listen.]
        Hoping to hear familiar sounds, Paula listened to the surrounding noises. Starting from her heart, beating wildly, forcing her to take deep breaths to calm down. Then she focused on whatever was closest to her, like the wind rolling against sand. Slowly moving to what was further away, like waves pacing back and forth on a beach. Yet, she kept getting distracted by the sound of crackling wood, as it burnt away.

        <i>Where am I… </i>

        ~ listen_wake = true
        -> Now_beach_options_en
    * {touch_wake or smell_wake or listen_wake} [Groan.]
        Paula let out a groan. Her head throbbed with pain she never felt before, making it hard to think. Harder to focus. Impossible to remember.

        “Morning, princess,” the voice snickered. 

        Paula shivered, partly from the cold breeze, partly out of fear. There was a stranger close by, one that had been there for an unknown amount of time. She didn’t even know how long her mind had faltered.

        “Well… maybe evening, actually.”

        She finally opened her eyes, and was breath-taken when her sight sharpened. Above her, the deep blue night sky twinkled with such clarity, she fully believed she was dreaming.

        ** [Pinch arm.]
            She struggled to move about, still groggy, but even more when pain shot through her arm as she pinched it. <i>Ouch</i>.

            “Not a dream, princess,” the voice sighed.

            *** [Get up.]
                -> Get_up_en


        ** [Accept it is a dream.]
            ~ is_this_a_dream = true
            If this was a dream, she was glad for it. Her life had been nothing but a nightmare recently. She rejoiced, even, in this belief. <i>Maybe I’ll see him too?</i>

            “Not a dream, princess,” the voice sighed.

            She wanted to scoff. She’d accepted her state. How else could it be explained?

            *** [Get up.]
                -> Get_up_en

=== Get_up_en ===
    Paula propped herself up, moving slowly. Her vision blurred. She still felt faint, and could not shake off the sensation of falling.

    “Woah, there,” the voice got closer. “Careful!”

    She came into contact with skin, arms wrapped gently around her. <i>The voice’s?</i> Uneasy, she wanted to pull away from the comforting warmth, but could not muster the force to do so.

    “You’ve been out for a while, princess,” the voice continued, just above her. “Here, slowly…”

    Calloused hands grabbed her arms, and she found herself sitting, her back placed against a large, cold rock. Handled like a doll, the stranger wrapped a cover around her shoulders.

    “Better be safe that sorry.”

    Paula looked up and saw a familiar face.

    “David?” she blurted out.
    “Err…” the man scratched his neck, looking away.
    “Oh, David, I knew you’d come back. I knew this wasn’t–”
    “Name’s Santana, princess…”

    An awkward silence set among them, broken only by the crackling fire. Santana cleared his throat, uncomfortable, and moved away. Paula looked at him, disappointed. Of course, he was not <i>him</i>, it could not have been <i>him</i>. She saw it now, as she studied his features. 

    * [Give name.]
        “Paula,” she mumbled.
        “Huh?” Santana looked back.
        “Name’s Paula.”
        “Nice to meet you, Paula.”
    
        He offered her his hand, which she shook with little conviction, ashamed of her outburst just now. He chuckled.
    
        “Here,” he handed her a bowl. “Eat up. You’re going to need it.”
    
        -> Beach_Bowl_Q_en

    * [Stay silent.]
        Ashamed of her little outburst, she pulled her legs closer to her. How stupid had she been thinking <i>he</i> would be here{is_this_a_dream:, even in her dreams}. She stole a glance at the man. Even <i>he</i> had never been this caring.

        “Here,” Santana came back, handing her a bowl.
        
        She took the offering with shaky hands.
        
        “Hey, princess,” he squatted. “What’s your name?”
        “Paula,” she mumbled.
        “Well, nice to meet you, Paula,” he fainted a smile. “Now, eat up. You’re going to need it.”
        
        -> Beach_Bowl_Q_en

=== Beach_Bowl_Q_en ===
    * {not beach_questions} [Ask questions.]
        Paula opened her mouth, questions fighting in her mind to escape her lips. There was much she wanted to know, but could not choose one thing to start with.

        “Eat first,” Santana beat her to it. “It’s easier to think on a filled stomach, princess.”
        ~ beach_questions = true
        -> Beach_Bowl_Q_en
        
    * {not beach_bowl} [Look at the bowl.]
        Paula looked at the bowl and grimaced. She usually was not the picky kind, but the sticky grey gruel was far from appetising.

        “Ha,” she heard Santana. “Sorry, I know it looks, well, not great… and it’s not going to taste much better. But it’s filling, I promise.”
        ~ beach_bowl = true
        -> Beach_Bowl_Q_en
        
    * [Eat.]
        Paula brought the bowl to her lips and let the sticky mixture spill into her mouth. The texture was quite unpleasant to swallow, and the taste did not help either. With every sip, she felt close to gagging. But her stomach ached for sustenance, whatever it may be. She chugged the rest.

        “That should help until daybreak,” she heard Santana whisper. He added, chuckling: “I have more, if you want!”

        The man laughed at the responding grimace.

        “It’s a joke, princess. Don’t worry,” he smiled and sat down. “Let’s wait for it to settle a bit… and then I’ll tell you all about Surviland.”
        -> Beach_Eat_Questions_en

    * {not beach_bowl_refuse}[Refuse.]
        Paula pushed the bowl, whose smell was making her nauseous.

        “Oh, princess,” Santana pouted. “I’m hurt…”
        “I’m sorry, but–”
        “I’ll eat it if you won’t,” he shrugged. “Food can’t be wasted here.”

        Paula’s stomach grumbled.
        ~ beach_bowl_refuse = true
        -> Beach_Bowl_Q_en

=== Beach_Eat_Questions_en ===
    * {not beach_look_around}[Look around.]
        Paula looked around, and her lips quivered. Under the bright night sky, her back against the sturdy stone, she found herself in a make-shift camp on a beach. Before her, a small campfire struggled to keep warm, the breeze flicking the flames. A bag stood close by, with a sleeping bag nearby – one sleeping bag. She shivered, unswayed by the calming ebb and flow of the sea.
        ~ beach_look_around = true
        -> Beach_Eat_Questions_en
        
    * {not beach_look_santana}[Look at Santana.]
        It stung to look at the man whose features resembled so much the ones of her love. From the glistening look in his eyes, to how his hair fell, that body next to her reminded her too much of <i>him</i>.

        Yet, she could not look away from those kind hands, fidgeting, or those broad shoulders and gentle arms, who had carried her before. She found so many contradictions, it frightened her. Who was this man? Had he done something to her? Could she trust him?
        
        Their eyes met, and he smiled.
        ~ beach_look_santana = true
        -> Beach_Eat_Questions_en
        
    * {not beach_look_you}[Look at body.]
        Paula looked at herself and held back her tears of relief. There was nothing wrong with her body, save for some scratches on her legs and itchy spots where she found some bites. Her fingers grazed her face, but nothing was amiss, nothing truly hurt. She only felt sore, as if she’d been running for hours. Her head still ached however, especially at the back.
        ~ beach_look_you = true
        -> Beach_Eat_Questions_en
        
    * [“Surviland?”]
        “Surviland?” Paula looked at the man, confused.
        “Well…” he brought his hands together, his fingers intertwined. “I might as well say it.” He took a long breath. “We’re stuck on a survival island, and if we survive for 24 days, we get to go home.”
        
        ** <i>whaaat…</i>
            -> What_Surviland_en
        ** <i>What.</i>
            -> What_Surviland_en
        ** <i>What?</i>
            -> What_Surviland_en
        ** <i>WHAT!</i>
            -> What_Surviland_en

=== What_Surviland_en ===
    “Ah… and people try to kill each other to be able to go home earlier.”
    
    <i>Ha… ha, ha… ha, ha, ha…</i>
    
    A nervous laugh escaped Paula’s lips, getting louder and rowdier. She laughed so hard her side started to ache. She’d glance at Santana, and his serious face would redouble laughter.
    
    “Wow, this is the lamest {not is_this_a_dream: prank|dream} ever…”
    “I’m not bullshitting, Paula. We’re really stuck here.” He sighed. “I know this is a hard pill to swallow, I’ve been in your shoes when I got here, but it’s real. Here.”
    
    Santana took her wrist, and faintly brushed the inner side of her arm, which tickled. A giggle faded as a faint, translucent screen appeared on her skin. Time ticked away, second by second, the numbers increasing alarmingly.
    
    <i>What the fuck?</i>
    
    “Look. It’s says three days and a few hours. That’s how long you’ve been here. You have a bit less than three weeks to survive.”
    
    * [Freak out. This has to be a nightmare.]
        Paula’s head fell in her hands, and her body shivered. <i>This has to be a nightmare, right?</i> Tears ran down her cheeks. <i>This makes no sense… why?</i> Her knees were shaking. <i>It’s not…</i>

        “Ha…”
        “Paula, I’m sorry… I–”
        “Haha…”
        
        She lifted her chin up to the sky. <i>Has it ever been this pretty?</i>
        
        “Hahaha…”
        “Paula?”
        “Ha. Ha. Ha.”
        
        A sound, not quite humane, from deep in her bowel, crawled up her body, tearing her inside apart. She screamed.
        
        ** <i>AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHH!</i>
            The scream frightened the fauna, the forest behind the beach ruffled with noise. Birds flew away.

            “Shit.” Santana swore, his eyes fixed on the deeper parts of the woods. “Shit, shit, shit.”
            
            While Paula had jumped to her feet and was pacing back and forth, mumbling and biting her nails, Santana gathered his stuff, shoving it carelessly in his bag. He had expected a reaction from her, but not this kind, not this loud. He swore again for not having thought to muffle her laugh before now.
            
            *** <i>Crack.</i>
                Santana stopped, holding his breath. Spotting another muffled sound despite Paula’s freak-out, colours left his face.

                “They’re here,” Santana’s voice shook.
                
                He looked around, but there was nowhere to hide. He had picked the beach weeks prior, as it had always seemed deserted. No one ever came to bother him. Until now. Until she screamed.
                
                Shadows emerged from the forest, bodies barely noticeable behind layers of protective gear, guns hanging by their side. Santana knew better than to trust that nonchalant behaviour from them. They were killers, who’d shoot you faster than the blink of an eye.
                
                Paula caught a glance of the intruders, and her scream choked in her bloodied throat. Santana covered his mouth, in vain. Another cocked his gun, and pointed it in his direction. He glanced at his arm, and closed his eyes.
                
                He was meeting…
                <small>his end.</small>
                -> END

    * [Keep calm. There must be a reasonable explanation.]
        Paula took a deep breath. She told herself she would not freak out. There had to be a good explanation for this. People don’t just end up on a seemingly deserted island willy-nilly, not remembering how they got there. People don’t get thrown into some weird <i>Battle Royale</i> setting and kill each other for sport. <i>That was just the stuff of movies and books, not…</i>
    
        She glanced at her arm again, the counter still ticking. She then looked at Santana’s apologetic face. <i>It doesn’t matter, does it?</i> Whatever reason there was for her to be here, now, would not change the fact. She had to survive… or die.
        
        “I’m sure you have some questions… and I can answer some. But–” he stopped, looking at the forest behind the beach. “Sound is dangerous, especially at night. So, I’ll answer three now, and the rest in the morning. Alright, princess?”
        
        Paula nodded.
        -> Surviland_question_en

=== Surviland_question_en ===
* “Why do you keep calling me princess?”
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana shrugged. 

        “Well, I mean… I’m a grown woman. And it’s kind of… you know…”
        “Don’t mean harm by it.”
        “Still, it’s not really–”
        “You kinda look like my cousin. We always called her ‘princess’ before…” He frowned.
        “Ah…”
        
        Paula extended her arm, as if she was going to comfort him, but stopped herself. <i>Not my baggage, not my worries…</i>
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }
* “How long have you been here?”
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana rolled down his sleeve, and covered his arms.

        “A while.”
        “You don’t keep track?”
        “Does it matter? As long as I survive for 24 days…”
        “But wouldn’t it be nice to count down the days?”
        “And then what? Putting a target on my back? Getting shived at the last moment? Fuck that.”
        “But–”
        “No.”
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }

* “Have I really been out for three days?”
    ~ question_num = question_num + 1
    { question_num < 3:
        “More or less, princess. Out cold, like Sleeping Beauty.”

        Paula blushed.
        
        “It wasn’t pretty to see, when I found you. Looked like a pile of stinky seaweed.”
        “Ah…” she looked down, both ashamed and disappointed.
        “Don’t worry, I made sure nothing happened to you. You know… throw some water at your face once in a while, or make sure you don’t burn in the sun.”
        “Thanks?”
        “Eh,” he shrugged.
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }

* “How did we get here?”
    ~ question_num = question_num + 1
    { question_num < 3:
        “You know what…” Santana looked at the sky, pensive. “I don’t really know either.”
        “What? But–” Paula was shaking. “You don’t remember how you…”
        “I… I don’t. I was nice and cushy on my couch, watching TV. Closed my eyes for a bit. And then, <i>BAM!</i> I was here.”
        “Here, <i>here</i>?” Paula pointed at the beach.
        “Nah, I woke up in the middle of the forest.”
        “Ah…”
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }

* “What do you mean kill people? Why?”
    ~ question_num = question_num + 1
    { question_num < 3:
        “Cause the incentive is too strong not to?”
        “What?”
        “Well, the rule goes like this: if you kill someone, you earn all their days spent on the island into your counter. It’s the fastest way to get out.”
        “But… if we help each other… without, you know, violence–”
        “I’m going to stop you right there, princess. People don’t care here. They want to go home. And if that means breaking a few skulls or slitting a few throats instead of spending a whole month on this shitty island, they will do just that.”
        “But that’s…” the words choked in her throat.
        “Yeah, well… what can you do?” he shrugged. 
        
        Silence settled between them, for a short while.
        
        “And you? Did you…”
        “What? <i>Oh</i>… No.” He shook his hands. “God, no.”
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }

* “Isn’t there another way to get out?”
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana looked at his feet, silent.

        “Would be nice if there was, princess. Really would.”
        “But… what about…” Paula looked around her, for inspiration. “The sea!”
        “What about it?” he shrugged.
        “Has no one ever–”
        “And go where?”
        “Well–”
        “We don’t even know where we are, princess! No one wants to risk their neck on the off chance we find some civilised land…”
        “But we could try to–”
        “Nu-huh.” He shook is head. “I’m waiting to get to my 24 days. Not risking it. It’s already dangerous enough as it is.”
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }
* “What do you miss the most here?”
    ~ question_num = question_num + 1
    { question_num < 3:
        “Haha… that’s an easy one!”
        
        He brought two fingers close to his lips, gently kissing them. Paula blushed.
        
        “I would honestly kill for a cigarette.”
        
        <i>Ah…</i>
        
        “Used to smoke at least a pack a week before I got here… Quitting cold turkey is not easy… especially when they make you.”
        “I can imagine…”
        “Oh! And toothpaste.” He laughed looking at her grimace. “Sorry, princess, but that’s the truth!”
        -> Surviland_question_en
      - else:
        -> Intruders_en
    }

=== Intruders_en ===
    Paula was about to ask that question when Santana raised his hand. He had heard a strange, ruffled sound towards the forest. He locked eyes with her, his finger on his lips, before trying to gather his stuff, shoving it as quietly as possible in his bag. At his direction, Paula covered the campfire with sand, and moved to hide behind the large stone.
    
    * <i>Crack.</i>
        Santana stopped, holding his breath. Hearing another muffled sound, colours left his face.

        “They’re here,” his voice shook.
        
        He looked around him, but there wasn’t anywhere safe enough to hide; even the large stone where Paula was hiding could barely cover her. He knew one day this would happen, when he picked this beach weeks prior for looking so deserted. No one ever bothered him. Even <i>they</i> usually left him be. 
        
        “Why now–” he looked at the stone. “No!”
        
        Shadows emerged from the forest, bodies barely noticeable behind layers of protective gear, guns hanging by their side. Santana knew better then to trust that nonchalant behaviour from them. <i>They</i> were killers, who’d shoot you faster than the blink of an eye.
        
        “Well, well, well…” one of the shadows exclaimed. “If it isn’t Mister I’m-almost-going-home.”
        
        Santana bit his tongue.
        
        “And who do we have here?” another chuckled.
        “Hey!” Paula protested.
        “No!” He shouted. “Leave her alone!”
        “Oh, ain’t that sweet,” a shadow grinned.
        
        Paula felt fingers brushing her arm. The translucent screen popped up.
        
        “Hey, boss! She’s only at three days.”
        “Oh, bummer. A just a d–” the shadow stopped, and something in their eyes glimmered. “Actually… that is interesting.”
        
        They grabbed Santana’s arm, forcefully rolled up his sleeve, and brushed the skin. Even behind the mask, you could feel they were grinning.
        
        “Just close to twenty-one, eh… that is quite interesting indeed.”
        
        The shadow approached Paula and grabbed her face.
        
        “I have a little… proposition for you. Do you want to hear it?”
        
        They did not wait for her to respond, shoving the gun into her hand.
        
        “See… you must know by know the rules, don’t you? And if you do a little calculation, the numbers fit… just right. Do you understand?”
        
        ** [Nod.]
            Paula nodded.

            “Then you know what to do.”
            
            They raised her arm, pointed at Santana. His breath’s cut short at the sight of the barrel. The gun, though small, was nonetheless loaded and still smelt of burnt powder. 
            
            *** [Shoot.]
                -> Shoot_en
            *** [Don’t shoot.]
                -> Die_en


        ** [Shake head.]
            Paula shook her head.

            “It’s quite simple. You shoot him, you get to go home. You don’t, we do it ourselves. And we kill you too.”
            
            They raised her arm, pointed at Santana. His breath’s cut short at the sight of the barrel. The gun, though small, was nonetheless loaded and still smelt of burnt powder. 
            
             *** [Shoot.]
                -> Shoot_en
            *** [Don’t shoot.]
                -> Die_en

=== Shoot_en===
Paula’s finger tightened around the trigger. She mouthed ‘I’m sorry’ at the man. He heard a…

<i>Click.</i>

<small>End.</small>
-> END

=== Die_en===
Paula’s fingers released the pistol, tears falling down her cheeks. <i>It’s just a dream</i>, she kept repeating herself. <i>It’s just a nightmare. I’m going to get up soon. I–</i>

Santana saw her body give up on its own weight, crashing onto the sand. He wanted to scream, but no sound left his shaking lips. He fell on his knees, crying at the injustice. 

Until, he, too, heard a…

<i>Click.</i>

<small>End.</small>
-> END


=== Intro_fr ===
    Le souffle de Santana se coupa à la vue du canon pointé sur lui. Le pistolet, bien que petit, était néanmoins chargé et sentait encore la poudre brûlée. Il entendit un…
    * <i>Click.</i>
        -> Flashback_fr 

=== Flashback_fr ===
    <center>Quelque temps auparavant</center>
    
    Paula mairchait la ville, sans but. Depuis que David avait choisi de “changer de direction”, elle ne savait pas quoi faire de tout ce nouveau temps libre. Elle passait habituellement tout ce temps avec lui, faisant des choses pour lui, prenant soin de lui… s’en laissant peu pour elle-même. Bien qu’elle ait maintenant passé devant de nombreux magasins et cafés, chacun pouvant la distraire de de lui, elle ne pouvait toujours pas décider quoi faire. Chaque pensée qu’elle avait n’était concentrée que sur une chose, et une seulement : espérer que David la rappellerait, promettant que tout avait été une erreur et qu’il voulait qu’elle revienne.
    
    Devant une boutique d’antiquités, un homme la bouscula.
    
    * [Entrer dans le magasin.]
        -> Flashback_enter_fr
        
    * [Continuer de marcher.]
        ~ walking_no_stop = true
        -> Flashback_walk_fr
        
    * [Demander à l’homme qu’il s’excuse.]
        « Hé ! » s’écria-t-elle en tournant. « Non, mais ça va pas, là ? »

        L’homme se retourna, la regarde, haussa les épaules, puis s’en alla.

        « Hé, vous ! » Elle le suivia, tendant le bras pour l’arrêter. « J’ai dit... »

        Il saisit son poignet, le tordant un peu. Ses yeux rencontrant ceux de l’homme, le cœur de Paula sauta un battement. Ils ressemblaient tellement à les <i>siennes</i>, <i>ses</i> pupilles sombres et mortifiantes qui la fixaient quand elle le mettait en colère. Elle clignait des yeux.

        « Q-quoi? »

        L’homme avait disparu.

        ** [Entrer dans le magasin.]
            -> Flashback_enter_fr
            
        ** [Continuer de marcher.]
            -> Flashback_walk_fr

    * [S’excuser auprès de l’homme.]
        « Désolé », murmura-t-elle sous son souffle.

        Elle jeta un coup d’œil à l’homme, qui n’avait aucune intention de se retourner, et poussa un soupir de déception lorsqu’elle comprit que n’était pas <i>lui</i>. Elle se mordit la lèvre, essayant de contenir ses larmes. Bien sûr, cela ne pouvait pas être <i>lui</i>… <i>Il</i> avait quitté le pays il y a quelques jours. Paula jura sur elle-même.

        ** [Entrer dans le magasin.]
            -> Flashback_enter_fr
            
        ** [Continuer de marcher.]
            -> Flashback_walk_fr

=== Flashback_enter_fr ===
    <i>Ding-ling</i>

    Le son de la clochette résonnait dans la pièce étouffante et sans vie. L’air moisi et poussiéreux assaillait les narines sensibles de Paula. Elle éternua. Ce son aussi résonna, et n’obtint pas plus de réponse. Si aujourd’hui était tout autre jour, cette absence l’alarmerait.

    « Bonjour ? » demanda-t-elle bêtement.

    Le silence régnait encore, tandis qu’elle passait dans les allées de la pièce. En parcourant les articles étranges et décrépis, Paula se rendit compte que ceci était la première fois qu’elle entrait dans un magasin comme celui-ci. <i>Il</i> n’avait jamais aimé ce genre d’endroits, et se plaignait quand les yeux de Paula s’arrêtaient devant une vitrine. Alors qu’elle s’interrogeait sur le passé des objets délaissés, <i>il</i> trouvait tout ceci assez macabre.

    Son doigt effleura… <>

    * une horloge atemporelle, avec une main manquante.
        -> Travel_fr
    * une épée cassée, sa poignée manquante.
        -> Travel_fr
    * un foulard de laine, en partie mangé par les mites.
        -> Travel_fr

=== Flashback_walk_fr ===
    {walking_no_stop:
       Comme si elle le ressentait à peine, Paula continua sa marche dans la rue, complètement insensible. Elle ne se souciait plus de ce qui pouvait lui arriver. Plus depuis qu’elle avait réalisé qu’<i>il</i> se souciait si peu d’elle.
    - else:
        Troublée, Paula laissa ses pieds la guider dans la rue, continuant sa marche. Elle détestait <i>le</i> voir partout où elle allait, mais continuait néanmoins à <i>le</i> chercher autour d’elle, espérant qu’elle trouverait un signe quelque part.
    }
    « Hein? »

    Bien qu’elle ait marché pendant plusieurs heures maintenant, Paula était de retour devant la boutique d’antiquités.

    * [Entrer dans le magasin.]
        -> Flashback_enter_fr

=== Travel_fr ===
    Ses paupières étaient lourdes, tombant avant qu’elle puisse le remarquer. Condamnant sa vue à l’obscurité totale.

    * [Ouvrir les yeux.]
        -> Now_beach_fr

=== Now_beach_fr ===
    Paula essaya d’ouvrir les yeux, mais trouva une certaine résistance venant de ses paupières. Elle prit ceci comme un signe d’une gueule de bois, une qui l’engourdissait durant plusieurs de ses matins depuis que David était parti. Pourtant, elle continua de faire des efforts – rester au lit encore plus longtemps n’arrangeait pas les choses. Tout de même, ses paupières ne bougeaient pas.

    « Ah… » s’écria une voix profonde.

    Le bruit étranger et soudain secoua Paula, qui jusqu’à présent avait été complètement seule. Elle se demanda si le propriétaire s’était finalement montré. Mais ses yeux ne voulurent toujours s’ouvrir pas.

    « On dirait qu’elle se réveille enfin. »

    Plus que cette présence inconnue, les paroles prononcées la rendaient mal à l’aise. Elle savait qu’elle se laissait s’évader dernièrement, mais elle ne pouvait pas croire qu’elle s’était endormie dans un magasin !

    « Eh bien, au moins, elle est toujours en vie, » soupira la voix.

    -> Now_beach_options_fr

=== Now_beach_options_fr===
    * {not open_eyes_again} [Ouvrir les yeux une nouvelle fois.]
        Paula essaya une fois de plus d’ouvrir ses yeux... en vain.
        ~ open_eyes_again = true
        -> Now_beach_options_fr
        
    * {not touch_wake} [Toucher.]
        Paula fit de son mieux pour se concentrer sur tout ce qui touchait sa peau. Elle reconnut la rude sensation de son pantalon et le contact plus doux de sa chemise. Étrangement, ses chaussettes semblaient mouillées, et ses pieds n’étaient plus immobilisés par des chaussures. Plus important encore, sous ses mains, une texture granuleuse et grossière chatouillait entre ses doigts.
        
        <i>Du sable ?!</i>
        ~ touch_wake = true
        -> Now_beach_options_fr
        
    * {not smell_wake} [Sentir.]
        De tous ses sens, Paula avait le plus confiance en son odorat. Qu’il s’agisse de trouver l’endroit le plus délectable pour manger ou de l’avertir de situations dangereuses, son nez était son allié le plus redoutable, où qu’elle aille. Elle avait seulement besoin d’une odeur pour se sentir à l’aise… ou s’échapper.

        L’air autour d’elle sentait le sel et l’humidité, avec un soupçon de bois brûlé – <i>cèdre</i>. Il y avait aussi des traces d’aliments cuits, mais elle ne pouvait pas dire quoi. Cela lui donnait faim.
        ~ smell_wake = true
        -> Now_beach_options_fr
        
    * {not listen_wake} [Écouter.]
        Espérant entendre des sons familiers, Paula écouta les bruits environnants. Partant de son cœur, battant sauvagement, l’obligeant à prendre de profondes respirations pour se calmer. Puis elle se concentra sur ce qui était le plus proche d’elle, comme le vent roulant contre le sable. Se déplaçant lentement vers ce qui était plus loin, comme des vagues faisant des va-et-vient sur une plage. Pourtant, elle se laissait distraire par le son du bois crépitant, alors qu’il brûlait.

        <i>Où suis-je… </i>
        ~ listen_wake = true
        -> Now_beach_options_fr
    * {touch_wake or smell_wake or listen_wake} [Gémir.]
        Paula poussa un gémissement. Sa tête palpitait de douleur, d’une puissance qu’elle n’avait jamais ressentie auparavant, ce qui rendait difficile de réfléchir. Difficile de se concentrer. Impossible de se souvenir.

        « Bonjour, princesse », ricana la voix. 

        Paula frissonna, en partie à cause de la brise froide, du reste par peur. Il y avait un étranger à proximité d’elle, un qui était là depuis un temps inconnu. Elle ne savait même pas depuis combien de temps son esprit avait vacillé.

        « Enfin… peut-être bonsoir, en fait. »

        Elle finalement ouvrit les yeux et fut à bout de souffle lorsque sa vue s’aiguisa. Au-dessus d’elle, le ciel nocturne d’un bleu profond scintillait d’une telle clarté, elle croyait pleinement rêver.
        
        ** [Pincer le bras.]
            Elle avait du mal à se déplacer, toujours un peu dans les vapes, mais encore plus lorsque la douleur lui transperça le bras quand elle le pinça. <i>Aïe</i>.

            « C’est pas un rêve, princesse, » la voix soupira.
            
            *** [Se lever.]
                -> Get_up_fr


        ** [Accepter que ceci est un rêve.]
            ~ is_this_a_dream = true
            Si c’était un rêve, elle en était bien heureuse. Sa vie n’avait été qu’un cauchemar récemment. Elle se réjouissait même de cette croyance. <i>Peut-être que je le verrai aussi ?</i>

            « C’est pas un rêve, princesse, » la voix soupira.

            Elle voulait se moquer. Elle avait accepté son état. Comment est-ce que quelqu’un pouvait explicer tout ça autrement ?
            
            *** [Se lever.]
                -> Get_up_fr

=== Get_up_fr ===
    Paula se redressa, bougeant lentement. Sa vision se brouilla. Elle se sentit encore faible et ne put se débarrasser d’une sensation de chute.

    « Hé, là, » la voix s’approcha. « Attention ! »

    Elle vint en contact avec de la peau, des bras enroulés doucement autour d’elle. <i>Ceux de la voix ?</i> Mal à l’aise, elle voulut s’éloigner de la chaleur réconfortante, mais ne trouvait pas la force pour le faire.

    « T’étais dans les vapes pendant un bon moment, princesse, » continua la voix, juste au-dessus d’elle. « Là, doucement… »

    Des mains calleuses saisirent ses bras, et elle se retrouva assise, le dos posé contre un grand rocher froid. Manipulée comme une poupée, l’étranger l’enveloppa d’une couverture.

    « Mieux vaut prévenir que guérir. »

    Paula leva les yeux et vit un visage familier.

    « David ? » ses mots s’échappèrent.
    « Euh… » L’homme se gratta le cou, détournant son regard.
    « Oh, David, je savais que tu reviendrais. Je savais que ce n’était pas... »
    « J’suis Santana, princesse… »

    Un silence gênant régnait parmi eux, brisé seulement par le feu crépitant. Santana se racla la gorge, inconfortable, et s’éloigna. Paula le regarda, déçue. Bien sûr, ce n’était pas <i>lui</i>, cela ne pouvait pas être <i>lui</i>. Elle le voyait bien maintenant, étudiant ses traits. 

    * [Donner Prénom.]
        « Paula, » murmura-t-elle.
        « Uh ? » Santana se retourna.
        « Je m’appelle Paula. »
        « Ravi de te rencontrer, Paula. »
    
        Il lui tendit la main, qu’elle secoua avec peu de conviction, honteuse de son petit débordement juste avant. Il gloussa.
    
        « Tiens, » il lui tendait un bol. « Mange. T’en auras besoin. »
    
        -> Beach_Bowl_Q_fr

    * [Garder le silence.]
        Honteuse de sa petite crise, elle rapprocha ses jambes. Comment avait pu-t-elle  penser qu’<i>il</i> serait ici{is_this_a_dream:, même dans ses rêves}. Elle jeta un coup d’œil à cet homme. Même <i>lui</i> n’avait jamais été aussi attentionné.

        « Tiens, » Santana revenait, lui tendant un bol.
        
        Elle prit l’offrande avec des mains tremblantes.
        
        « Hé, princesse, » s’accroupit-il. « T’as ton nom ? »
        « Paula, » murmura-t-elle.
        « Ravi de te rencontrer, Paula, » il souria. « Maintenant, mange. Tu vas en avoir besoin. »
        
        -> Beach_Bowl_Q_fr

=== Beach_Bowl_Q_fr ===
    * {not beach_questions} [Poser des questions.]
        Paula ouvrit la bouche, son esprit chargé des questions se battant pour être posée. Il y avait beaucoup qu’elle voulait savoir, qu’elle avait besoin de savoir, mais ne pouvait pas en choisir une pour commencer.

        « Mange d’abord, » Santana la devança. « C’est plus facile de penser le ventre plein, princesse. »
        ~ beach_questions = true
        -> Beach_Bowl_Q_fr
        
    * {not beach_bowl} [Regarder le bol.]
        Paula regarda le bol et grimaça. Elle n’était généralement pas du genre difficile, mais le gruau gris collant était loin d’être alléchant.

        « Ah, » elle entendit Santana au loin. « Désolé, je sais que ça a pas l’air, eh bien, appétissant… et c’est pas beaucoup mieux pour le goût. Mais c’est rassasiant, je promets. »
        ~ beach_bowl = true
        -> Beach_Bowl_Q_fr
        
    * [Manger.]
        Paula amena le bol à ses lèvres et laissa le mélange collant se répandre dans sa bouche. La texture était assez désagréable à avaler, et le goût n’aidait pas non plus. À chaque gorgée, elle se sentait proche de vomir. Mais son estomac avait besoin d’être nourrit. Elle but cul sec le reste.

        « Cela devrait aider, jusqu’à l’aube au moins, » elle entendit Santana chuchoter. Il ajouta, en riant : « J’en ai plus, si t’en veux encore ! »

        L’homme ricana de sa grimace.

        « C’est une blague, princesse. Ne t’inquiète pas, » il sourit et s’assit. « Attends que ça se calme un peu… et ensuite je te parlerai de Surviland. »
        -> Beach_Eat_Questions_fr

    * {not beach_bowl_refuse}[Refuser.]
        Paula repoussa le bol, dont l’odeur lui donnait la nausée.

        « Oh, princesse, » bouda Santana. « Je suis blessé… »
        « Je suis désolé, mais… »
        « Je le mangerai si t’en veux pas, » il haussa des épaules. « On gaspille pas la nourriture ici. »

        L’estomac de Paula grognait.
        ~ beach_bowl_refuse = true
        -> Beach_Bowl_Q_fr

=== Beach_Eat_Questions_fr ===
    * {not beach_look_around}[Regarder autour.]
        Paula regarda autour d’elle, et ses lèvres tremblèrent. Sous le ciel nocturne lumineux, le dos contre le solide rocher, elle se trouvait dans un camp improvisé sur une plage. Devant elle, un petit feu de camp luttait pour rester allumé, la brise se battant avec les flammes. Un sac se tenait à proximité, avec un sac de couchage pas loin – un seul sac de couchage. Elle frissonnait, indifférent par le flux et le reflux apaisants de la mer.
        ~ beach_look_around = true
        -> Beach_Eat_Questions_fr
        
    * {not beach_look_santana}[Regarder Santana.]
        Cela lui piquait le cœur de regarder l’homme dont les traits ressemblaient tant à ceux de son amour. Du regard scintillant, à la façon dont ses cheveux tombaient, ce corps à côté d’elle lui rappelait trop <i>lui</i>.

        Pourtant, elle ne pouvait détourner son regard de ces mains aimables, agitées, ou de ces épaules larges et de ces bras doux, qui l’avaient portée auparavant. Elle a trouvé tant de contradictions qui l’effrayèrent. Qui était cet homme? L’avait-il fait quelque chose? Pouvait-elle lui faire confiance?
        
        Leurs yeux se rencontrèrent, et il sourit.
        ~ beach_look_santana = true
        -> Beach_Eat_Questions_fr
        
    * {not beach_look_you}[Regarder le corps.]
        Paula se regarda et retena ses larmes de soulagement. Rien n’avait changé avec son corps, à part quelques égratignures sur ses jambes et des démangeaisons où elle trouva quelques boutons. Ses doigts frôlèrent son visage, mais tout était encore là, rien ne faisait vraiment mal. Elle se sentait seulement endolorie, comme si elle avait couru pendant des heures. Sa tête lui faisait toujours mal, surtout à l’arrière.
        ~ beach_look_you = true
        -> Beach_Eat_Questions_fr
        
    * [« Surviland ? »]
        « Surviland ? » Paula regarda l’homme, confuse.
        « Eh bien… » il réunit ses mains, ses doigts entrelacés. « Autant tout sortir direct. » Il inpira longement. « Nous sommes coincés sur une île de survie, et si nous survivons pendant 24 jours, nous pouvons rentrer chez nous. »
        
        ** <i>quooiii…</i>
            -> What_Surviland_fr
        ** <i>Quoi.</i>
            -> What_Surviland_fr
        ** <i>Quoi ?</i>
            -> What_Surviland_fr
        ** <i>QUOI !</i>
            -> What_Surviland_fr

=== What_Surviland_fr ===
    « Ah… et les gens essaient de s’entretuer pour pouvoir rentrer chez eux plus tôt. »
    
    <i>Ha… ha, ha… ha, ha, ha…</i>
    
    Un rire nerveux s’échappa des lèvres de Paula, devenant de plus en plus bruyant. Elle rit si fort qu’elle commançait à avoir un point de côté. Elle jeta un coup d’œil à Santana, et son visage sérieux la faisait redoubler de rire.
    
    « Wow, c’est le plus nul {not is_this_a_dream: canular|rêve} que j’ai jamais entendu… »
    « Je ne raconte pas de conneries, Paula. On est vraiment coincé ici. » Il soupire. « Je sais que c’est difficile à avaler, j’ai été à ta place quand je suis arrivé ici, mais c’est réel. Attends, regarde. »
    
    Santana prit son poignet, et effleura légèrement l’intérieur de son bras, ce qui chatouilla. Un fou rire s’évanouit alors qu’un écran pâle et translucide apparaissait sur sa peau. Le temps s’écoulait, seconde par seconde, les chiffres augmentant de façon alarmante.
    
    <i>Qu’est-ce que c’est que ce bordel ?</i>

    « Regarde. Ça indique trois jours et quelques heures. C’est le temps que tu as passé ici. Il te reste un peu moins de trois semaines pour survivre. »

    * [Panique. C’est un vrai un cauchemar. ]
        La tête de Paula tomba dans ses mains et son corps frissonnait. <i>Ça doit être un cauchemar, hein ? </i> Des larmes coulaient sur ses joues. <i>Cela n’a aucun sens… pourquoi ? </i> Ses genoux tremblaient. <i>Ce n’est pas… </i>

        « Ha… »
        « Paula, je suis désolée… je– »
        « Haha… »
        
        Elle leva le menton vers le ciel. <i>N’a-t-il jamais été aussi beau ? </i>
        
        « Hahaha… »
        « Paula ? »
        « Ha. Ha. Ha. »
        
        Un bruit, pas tout à fait humain, venant du fond de ses entrailles, grimpait son corps, la déchirant à l’intérieur. Elle cria.
        
        ** <i>AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHH!</i>
            Le cri effraya la faune, la forêt derrière la plage se froissant de bruit. Les oiseaux s’envolèrent.

            « Merde. » Santana jura, les yeux fixés sur le plus profond de la forêt. « Merde, merde, merde. »
            
            Alors que Paula s’était levé et faisait des va-et-vient, marmonnant et se mordant les ongles, Santana rassembla ses affaires, les poussant négligemment dans son sac. Il s’attendait à une réaction de la part de Paula, mais pas de ce genre, pas avait autant de bruit. Il jura encore de ne pas avoir pensé à étouffer son rire avant maintenant.
            
            *** <i>Crack.</i>
                Santana s’arrêta, retenant son souffle. Voyant un autre son étouffé malgré la panique de Paula, les couleurs quittèrent son visage.

                « Ils sont là, » la voix de Santana tremblait.
                
                Il regardait autour de lui, mais il n’y avait nulle part où se cacher. Il avait choisi la plage des semaines auparavant, car elle semblait toujours déserte. Personne n’était jamais venu le déranger. Jusqu’à maintenant. Jusqu’à ce qu’elle crie.
                
                Des ombres émergèrent de la forêt, des corps à peine visibles derrière des couches d’équipement de protection, des fusils suspendus à leurs côtés. Santana savait qu’il ne fallait pas se fier à leur comportement nonchalant. Ils étaient des tueurs, qui vous tiraient dessus plus vite qu’un clin d’œil.
                
                Paula aperçut les intrus, et son cri s’étouffa dans sa gorge ensanglantée. Santana se couvrit la bouche, en vain. Un autre avait armé son arme et la pointait dans sa direction. Il jeta un coup d’oeil à son bras et ferma les yeux.
                
                Il rencontrait…
                <small>sa fin. </small>
                
                He was meeting…
                <small>his end.</small>
                -> END
    * [Rester calme. Il doit bien y avoir une explication raisonnable.]
        Paula prit une grande inspiration. Elle se dit qu’elle ne paniquerait pas. Il devait bien y avoir une bonne explication. Les gens ne se retrouvaient pas sur une île apparemment déserte, bon gré mal gré, sans se rappeler de comment ils y étaient arrivés. Les gens n’étaient pas jetés dans une sorte de <i>Battle Royale</i> bizarre et s’entretuaient pour le sport. <i>Ce n’était que des films et des livres, pas… </i>
    
        Elle jeta à nouveau un coup d’œil à son bras, le compteur toujours comptant. Elle regarda ensuite le visage désolé de Santana. <i>Cela n’a pas d’importance, n’est-ce pas ?</i> Quelle qu’était la raison pour laquelle elle devait être ici, maintenant, cela ne changerait rien. Elle devait survivre… ou mourir.
        
        « Je suis sûr que tu as plein de questions… et je peux y répondre. Mais… » il s’arrêta, regardant la forêt derrière la plage. « Le son est dangereux, surtout la nuit. Alors, je vais répondre à trois seulement là, et le reste le matin. D’accord, princesse ? »
        
        Paula hocha la tête.
        -> Surviland_question_fr

=== Surviland_question_fr ===
* « Pourquoi tu continues à m’appeler princesse ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana haussa les épaules. 

        « Eh bien, je veux dire… Je suis une femme adulte. Et c’est un peu… tu sais… »
        « Voulait pas dire de mal ».
        « Pourtant, ce n’est pas vraiment– »
        « Tu ressembles un peu à ma cousine. On l’avait toujours appelée ‘princesse’ avant… » Il a froncé les sourcils.
        « Ah… »
        
        Paula tendit son bras, comme si pour le réconforter, mais elle s’arrêta. <i>Pas mon cirque, pas mes soucis… </i>

        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }
* « Depuis combien de temps es-tu ici ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana baissa sa manche et couvrit ses bras.

        « Un bon moment. »
        « Tu surveilles pas ? »
        « Est-ce que c’est si important ? Tant que je survis pendant 24 jours… »
        « Mais ne serait-il pas plus agréable de compter les jours ? »
        « Et puis quoi encore ? Me mettre une cible sur le dos ? Me faire suriner au dernier moment ? Merde ! »
        « Mais– »
        « Non. »
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }

* « J’étais vraiment dans les vapes pendant trois jours ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        « Plus ou moins, princesse. Complètement à froid, comme la Belle au bois dormant. »

        Paula rougit.
        
        « C’était pas beau à voir, quand je t’ai trouvé. Ça ressemblait à un tas d’algues puantes. »
        « Ah… » elle baissa les yeux, à la fois honteuse et déçue.
        « T’inquiète pas, je me suis assuré qu’il ne t’arrivait rien. Tu sais… jeter de l’eau sur ton visage de temps en temps, ou m’assurez que tu brûles sous le soleil. »
        « Merci ? »
        « Eh ! » il haussa les épaules.
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }
    
* « Comment est-ce qu’on est arrivé là ? » qu
    ~ question_num = question_num + 1
    { question_num < 3:
        « Tu sais quoi… » Santana regarda le ciel, pensif. « Je sais pas vraiment non plus. »
        « Quoi? Mais – » Paula tremblait. « Tu ne te souviens pas comment tu… »
        « Je… Je sais pas. J’étais bien et douillet sur mon canapé, à regarder la télé. Je ferme les yeux un peu. Et puis, <i>BAM !</i> j’étais là. »
        « Ici, <i>ici</i> ? » Paula pointa du doigt la plage.
        « Non, je me suis réveillé au milieu de la forêt. »
        « Ah… »
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }

* « Qu’est-ce que tu veux dire par tuer des gens ? Pourquoi ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        « Parce que la prime est trop grosse pour ne pas le faire ? »
        « Quoi ? »
        « Eh bien, la règle est la suivante : si tu tues quelqu’un, tu gagnes tous les jours passés sur l’île dans ton compteur. C’est le moyen le plus rapide de s’en sortir. »
        « Mais… si nous nous entraidons… sans violence – »
        « Je t’arrête là, princesse. Les gens s’en fichent. Ils veulent rentrer chez eux. Et si ça veut dire briser quelques crânes ou trancher quelques gorges au lieu de passer un mois entier sur cette île de merde, ils le feront. »
        « Mais c’est… » les mots lui étranglèrent la gorge.
        « Oui, eh bien… qu’est-ce qu’on peut faire ? » il haussa les épaules. 
        
        Le silence s’installa entre eux, pour un court moment.
        
        « Et toi ? As-tu… »
        « Quoi ? <i>Oh</i>… Non. » Il secoua sa main. « Grand dieu, non. »
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }

* « N’y a-t-il pas une autre façon de s’échapper ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        Santana regarda ses pieds, silencieux.

        « Ce serait bien si c’était le cas, princesse. Vraiment. »
        « Mais… qu’en est-il de… » Paula a regardé autour d’elle, pour trouver l’inspiration. « La mer ! »
        « Qu’est-ce qu’elle a, le mer ? » il haussa les épaules.
        « Personne n’a jamais... »
        « Et aller où ? »
        « Eh bien »
        « On sait même pas où on est, princesse ! Personne ne veut risquer sa peau au cas où on trouverait une terre civilisée… »
        « Mais nous pourrions essayer de... »
        « Nu-huh. » Il secoua la tête. « J’attends d’arriver à mes 24 jours. Je risque rien. C’est déjà assez dangereux comme ça. »
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }
* « Qu’est-ce qui te manque le plus ici ? »
    ~ question_num = question_num + 1
    { question_num < 3:
        « Haha… c’est facile ! »
        
        Il approcha deux doigts de ses lèvres, les embrassant doucement. Paula rougit.
        
        « Honnêtement, je tuerais pour une cigarette. »
        
        <i>Ah… </i>
        
        « J’avais l’habitude de fumer au moins un paquet par semaine avant d’arriver ici… C’est pas facile d’arrêter de fumer commeça… surtout quand on te force. »
        « Je peux imaginer… »
        « Oh ! et du dentifrice. » Il rit en regardant sa grimace. « Désolé, princesse, mais c’est la vérité ! »
        -> Surviland_question_fr
      - else:
        -> Intruders_fr
    }

=== Intruders_fr ===
    Paula était sur le point de poser cette question lorsque Santana leva sa main. Il avait entendu un bruit étrange et froissnat vers la forêt. Il la fixa droit dans les yeux, son doigt sur ses lèvres, puis d’essaya de rassembler ses affaires, les fourrant le plus discrètement possible dans son sac. À sa directive, Paula couvrit le feu de camp avec du sable et se cacha derrière la grande pierre.
    
    * <i>Crack.</i>
        Santana s’arrêta, retenant son souffle. Entendant un autre bruit sourd, les couleurs quittèrent son visage.

        « Ils sont là, » dit-il.
        
        Il regarda autour de lui, mais ne trouva aucune cachette; même la grande roche où Paula se cachait derrière pouvait à peine la couvrir. Il savait qu’un jour cela devait arriver, quand il a choisi cette plage des semaines auparavant du fait de son air si déserte. Personne ne l’a jamais dérangé. Même <i>eux</i> le laissaient tranquille. 
        
        « Pourquoi maintenant ? » Il regarda la roche. « Non ! »

        Des ombres émergère de la forêt, des corps à peine visibles derrière des couches d’équipement de protection, des fusils suspendus à leurs côtés. Santana savait qu’il ne fallait pas se fier à leur comportement nonchalant. <i>Ils</i> étaient des tueurs, qui vous tiraient dessus plus vite que le clin d’œil.
        
        « Eh bien, son… » s’écria l’une des ombres. « Si ce n’est pas Monsieur Je-vais-presque-pouvoir-rentrer-chez-moi. »
        
        Santana se mordit la langue.
        
        « Et que avons-nous ici ? » Un autre ria.
        « Hé ! » protesta Paula.
        « Non ! » cria Santana. « Laissez-la tranquille ! »
        « Oh, qu’est-ce que c’est mignon, » sourit une ombre.
        
        Paula sentit des doigts brosser son bras. L’écran translucide apparut.
        
        « Hé, patron ! Elle n’en est qu’à trois jours. »
        « Oh, dommage. A juste un d– » l’ombre s’arrêtéa, et quelque chose dans ses yeux brilla. « Attend… mais c’est que c’est bien intéressant tout ça. »
        
        Ils saisirent le bras de Santana, retroussère sa manche avec force et éraflèrent sa peau. Même derrière le masque, on pouvait sentir qu’ils souriaient.
        
        « Près de vingt-et-un, eh… c’est très intéressant en effet. »
        
        L’ombre s’approcha de Paula et saisit son visage.
        
        « J’ai une petite proposition pour toi. Tu veux l’écouter ? »
        
        Ils n’attendirent pas sa réponse, lui enfonçant le pistolet dans la main.
        
        « Tu vois… tu devrais connaître les règles, non ? Et si on fait un petit calcul, les chiffres correspondent… tout à fait. Est-ce que tu me suis ? »
        
        ** [Hocher la tête.]
            Paula hocha la tête.

            « Alors tu sais quoi faire. »
            
            Ils levèrent son bras, le pointant Santana. Le souffle de l’homme se coupa à la vue du canon. Le pistolet, bien que petit, était néanmoins chargé et sentait encore la poudre brûlée. 
            
            *** [Tirer.]
                -> Shoot_fr
            *** [Ne pas tirer.]
                -> Die_fr


        ** [Secouer la tête.]
            Paula secoua la tête.

            « C’est assez simple. Tu lui tires dessus, tu rentres chez toi. Tu ne le fais pas, nous le faisons nous-mêmes. Et nous te tuons aussi, évidemment. »
            
            Ils levèrent son bras, le pointant Santana. Le souffle de l’homme se coupa à la vue du canon. Le pistolet, bien que petit, était néanmoins chargé et sentait encore la poudre brûlée.
            
            *** [Tirer.]
                -> Shoot_fr
            *** [Ne pas tirer.]
                -> Die_fr

===Shoot_fr===
Le doigt de Paula se serra autour de la gâchette. Elle murmura ‘Je suis désolée’ à l’homme. Il entendit un...

<i>Click.</i>

<small>Fin.</small>
-> END

===Die_fr===
Les doigts de Paula relâchèrent le pistolet, des larmes glissant sur ses joues. <i>C’est juste un rêve</i>, elle ne cessait de se répéter. <i>C’est juste un cauchemar. Je vais me réveiller bientôt. </i>

Santana vit le corps de la femme s’effondrer sous son propre poids, s’écrasant sur le sable. Il voulait crier, mais aucun son ne passa ses lèvres tremblantes. Il tomba à genoux, pleurant à l’injustice. 

Jusqu’à ce que lui aussi entende un…

<i>Click.</i>

<small>Fin.</small>
-> END