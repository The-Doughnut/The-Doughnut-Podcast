@echo off
:reset
cls
echo ...............................................................................
echo ...............................................................................
echo ...............................--+++++++++++*+**++++:..........................
echo ..........................-:++++++++***:**++****+++++++:-......................
echo .......................-+*+*++*****+*+++++:+++++++++++*+=*+-...................
echo ...................-+=*****++++*+::++++++++++++++++**++*++++++-................
echo ................--+***+******++++**+++++::::+::+++++++++++++++++-..............
echo ..............--:********=*+::-:++**:++:+:::+:+:++*==*+++*+++++**+:............
echo ............--:***********+++:++:--:++++:++:-:+::*+-::+++:++++****++:..........
echo ..........---:*******++++++++:--::::++::::+***+++:::---::++++***==**++.........
echo .........---+**=****++**++::::++++:+==*:---:*+=***+++::+*****+****=***+........
echo ........---+******+++**+:::+::*+**:::+::::::+*+++:+::::++**::::+****++++.......
echo ........--+****++*+*+++=*+++::++*=*+++++++:+*==**+++:+++-:---:+++**++***:......
echo ......---:***=*+++:+++:++::::+:::++***+++***==*+++*++++::::---:++***+=**++-....
echo ......--:+*===**+:++*+::+:::***++*++**===#**===****++++++++:---::++******:-....
echo .....---:*=**=*****+*+::+:+++*=+++***+====#====**=**+++++*+::+*+::+:+****+-....
echo ....---:+==******:++++*+::+*=*:+****==###########===**++*+++**+:-+++******:....
echo ....---:*==*=**+++++++++******+:+===#====##@@@##=***++****+:---:++********+-...
echo ...---:+==******+::**+++::++++:+===#=::::+*=#@@##===:+**+:+++:+*++++*==****-...
echo ...---:+=*+=*+****++:++::**==***===-------:+*=#=#++******+++++:++*++*=*=**=-...
echo ...--::+*==+=+++++:*=:++++++**+*=#+......--:+***==***++++++:::::+++++**=***-...
echo ...---:+*====++**=*++*+:+++***++==*+.....--**====++***+:+::::+::+++****==*+-...
echo ...---:+**===++*=*:++:++::+*++::*===***::+====*+*+***+++:--:::-:++********+....
echo ...---:+*=*=#*+===+++::+++++:++++**+=*=====*+++++*==++++::++::+******=****:....
echo ...----:*====*=*=***++::+++++:+:+++++++*****++*++**+++::++++++++*********+.....
echo ....---:+*======**=**++:--+=**:::++**++::+=*+++++**:+++::--:++:+*+***=*=*-.....
echo ....----:+*======*+++++:::+**+::+++*+-:::+++++++++:::+::+++++++**==**=**:......
echo .....---:+*========**+++++*+++:+:-:**::++::-::+++:++::++++++****=*****+-.......
echo ......---:+*=**==*+*==**++++*++*+:::++++:::-::+**+++*=*+:::+****=****:-........
echo ......---::*==*===*+==***++*=***++:::*++**++::::++:::++******=====*+-..........
echo ......----:+*=#=*+**===****++++::+=*::++++:++:++++++++*+*****+*=*+--...........
echo ........---::+*#=##========*********+++++::++++***+***++======**:-.............
echo .........----:+*=##===*====#====********+++++*****====**==***+---..............
echo ..........----::+*=##====================#===============**+---................
echo ............-----:++*=###=================##===##======*+:---..................
echo .............------::++*==##=====================***++:----....................
echo ..................-----::++***==========******++:::----........................
echo .....................-------:::::+++++++:::::---------.........................
echo ---......................---------------------.................................
echo.
echo.
echo DOUGHNUT ENTERTAINMENT
ping localhost -n 5 >nul
cls

@echo off
cls
:menu
cls
color 0a
echo Welcome to (title of the game)
echo.
echo Please type a number, then press enter
echo 1. Start
echo 2. Info
echo 3. Stats
echo 4. Credits
echo 5. Exit
echo.
echo (C)2020 DOUGHNUT ENTERTAINMENT
set /p number=

if not defined number (
cls
goto menu
)

if %number% == 1 goto game
if %number% == 2 goto info
if %number% == 3 goto stats
if %number% == 4 goto credits
if %number% == 5 exit
if %number% == Q goto reset
if %number% == q goto reset

:game
cls
echo What is your name?
set /p name=
echo Hello %name%!
ping localhost -n 2 >nul
echo Do you want to start the game? (y/n)
set /p start=
if %start% == Y goto level1
if %start% == y goto level1
if %start% == N goto menu
if %start% == n goto menu
if %start% == Q goto reset
if %start% == q goto reset
goto game

:info
cls
echo Current game version: 0.1.4
echo CMD version: %cmdextversion%
echo Operating system: 
VER
echo.
echo Currrent time and date on your system: %time% %date%
echo.
echo You are the hero of this game. Read the story and select the action that you would like to choose by pressing the appropriate letter on your keyboard and click enter.
echo This game is a work in progress. Do not type a number or a letter that is not part of the list, otherwise you may crash the game. Press 'Q' anytime to reset the game.
ping localhost -n 2 >nul
echo Go back to the menu? (y/n)
set /p help=

if %help% == Y goto menu
if %help% == y goto menu
if %help% == N goto info
if %help% == n goto info
if %help% == Q goto reset
if %help% == q goto reset
goto info

:stats
cls
echo This game took __ days to complete.
echo There are 446 lines of code.
echo ...
echo Started coding on June 23 2020
ping localhost -n 2 >nul
echo Go back to the menu? (y/n)
set /p helpstats=

if %helpstats% == Y goto menu
if %helpstats% == y goto menu
if %helpstats% == N goto stats
if %helpstats% == n goto stats
if %helpstats% == Q goto reset
if %helpstats% == q goto reset
goto stats

:credits
cls
echo Created by Doughnut
echo Story...................................................................Doughnut
echo Programming.............................................................Doughnut
echo Testing...........................................WiZe_DeAd_StAr, YohananDiamond
ping localhost -n 2 >nul
echo Go back to the menu? (y/n)
set /p help=

if %help% == Y goto menu
if %help% == y goto menu
if %help% == N goto info
if %help% == n goto info
if %help% == Q goto reset
if %help% == q goto reset

:level1
cls
color 0a
echo You wake up one morning, ready to go to school. The year is 2008, and you are in 8th grade. What is the first thing you do?
echo 1. Brush your teeth
echo 2. Eat breakfast
echo 3. Watch YouTube
echo 4. Stay in bed
set /p number=

if %number% == 1 goto teeth
if %number% == 2 goto breakfast
if %number% == 3 goto youtube
if %number% == 4 goto bed
if %number% == Q goto reset
if %number% == q goto reset
goto level1

:teeth
cls
echo You walk towards the bathroom and you start brushing your teeth.
ping localhost -n 3 >nul
color 04
echo YOU DIED!
echo You just realised that you brushed your teeth BEFORE eating breakfast. You are supposed to brush after breakfast. Right? I actually don't know if that is the norm. Please help.
echo M. Menu
echo R. Restart to previous point
echo S. Go back to start
set /p choice=
if %choice% == M goto menu
if %choice% == m goto menu
if %choice% == R goto level1
if %choice% == r goto level1
if %choice% == S goto level1
if %choice% == s goto level1
if %choice% == Q goto reset
if %choice% == q goto reset

:breakfast
cls
echo You walk downstairs and discover that your parents already made you breakfast. You sit down at the table and eat your waffles and your bowl of Froot Loops before going to pack your bags. You then realise that you cannot find your iPod, which is obviously very important for the school bus trip. What are you gonna do next?
echo 1. Open your drawer
echo 2. Search on your desk
echo 3. Look under your bed
echo 4. Ignore the iPod for today as you don't want to be late for school
set /p number=
if %number% == 1 goto drawer
if %number% == 2 goto desk
if %number% == 3 goto WIP
if %number% == 4 goto WIP
if %number% == Q goto reset
if %number% == q goto reset
goto breakfast

:desk
cls
echo You look on your desk and you spotted your handheld FM tuner. As you are running out of time, you might as well take your tuner and listen to the latest hits on your local radio stations. As you arrived to your bus stop by walking, the bus appeared. You sit down next to your friend, Micheal. 
echo.
echo Micheal: What's up %name%?
echo %name%: I was late and I couldn't find my iPod. At least I managed to grab my handheld radio in time!
echo Micheal: Oh that's cool! Let's hear whats on
echo.
echo You turn on the radio, and tune in to the frequency of your favourite FM station.
echo.
echo Radio: *music*
echo Micheal: Hey, that's awesome. Maybe I should get a handheld radio as well.
echo.
echo Suddenly, the music stopped.
echo.
echo Radio: (Robotic voice) Alert! This is an emergency brodcast requested by the government. At 5 AM this morning, there has been sightings of-
echo Kid sitting in front of you: CAN YOU TURN IT DOWN??? I'M TRYING TO LISTEN TO MY MUSIC DAMMIT AND ALL I HEAR IS YOUR STUPID RADIO!!!11
echo Bus driver: SIT DOWN AND SHUT UP!!!
echo.
echo The whole bus is now quiet. In order to not bother anyone for the rest of the trip, you decide to turn off your radio. For the remaining of the bus trip, you wonder what the emergency alert broadcast was about. What happened at 5 in the morning today? Is it dangerous? Does it even affect our region? So many questions! You end up telling yourself that whatever the emergency is, it should not affect you as school has not been closed for the day. You arrived at school, but before entering the building, Micheal and you decided to stay outside before first period to hang out. What will you do next?
echo.
echo 1. Tune in to your radio station
echo 2. WIP
echo 3. WIP
echo 4. WIP
set /p number=
if %number% == 1 goto WIP
if %number% == 2 goto WIP
if %number% == 3 goto WIP
if %number% == 4 goto WIP
if %number% == Q goto reset
if %number% == q goto reset

:youtube
cls
echo You decide to start your day by watching a few YouTube videos. You hop on your computer and wake it from sleep mode. You open up Internet Explorer, your web browser of choice and you start typing www.youtube.com on the search bar, and press enter. But alas, it did not work. It seems that the network is down. What are you going to do next?
echo 1. Investigate the bad network
echo 2. Give up and go eat breakfast
echo 3. Give up and go brush your teeth
echo 4. Give up and play Pinball 3D Space Cadet
set /p number=
if %number% == 1 goto networkInvestigation
if %number% == 2 goto breakfast
if %number% == 3 goto teeth
if %number% == 4 goto pinball
if %number% == Q goto reset
if %number% == q goto reset

:networkInvestigation
cls
echo You look at the back of your computer. The ethernet cable is plugged in. You follow the cable. It is also plugged into the wall socket. You walk downstairs, inspect the modem, the router, and all of the cables. Nothing seems to be out of the ordinary. While you're at it, you might as well check the phone line. No tone. What is happening? This is very strange. It seems like all communications have been cut. What do you do next?
echo 1. Call your Internet service provider with your cellular phone
echo 2. Call your phone company with your cellular phone
echo 3. Check your cable TV
echo 4. Forget about it and go to school (you're gonna be late!)
set /p number=
if %number% == 1 goto ISPCall
if %number% == 2 goto PhoneCompanyCall
if %number% == 3 goto cableTV
if %number% == 4 goto busBad
if %number% == Q goto reset
if %number% == q goto reset

:ISPCall
cls
echo You dial the number of your Internet service provider.
echo.
echo %name%: Hello? I'm calling regarding my network being down.
echo Call centre: We are aware. In fact, I should inform you that your whole area is down. They are working on it. Their phone system also went down, you are currently speaking to the European division of the company.
echo %name%: Okay, thanks for the info.
echo.
echo Wow, the whole area is down. I wonder why. I guess there is no need to call the phone company as I now know that the whole area is down. I should probably call Micheal and see if he experiences the same thing.
echo 1. Call Micheal
set /p number=
if %number% == 1 goto WIP
if %number% == Q goto reset
if %number% == q goto reset

:PhoneCompanyCall
cls
echo You dial your phone company's number. No response. In fact, you are unable to connect to the other end. This is all very strange, you tell yourself. I should probably call Micheal and see if he's experiencing such issues.
echo 1. Call Micheal
set /p number=
if %number% == 1 goto WIP
if %number% == Q goto reset
if %number% == q goto reset

:cableTV
cls
echo You walk into your living room, and you turn on your television. You receive video signal from the cable box, but it indicates NO SIGNAL on every channel. You decide instead to switch to over the air television (terrestrial television). Fortunately, you are able to pick up your local TV stations with the roof antenna connected to the TV. Weirdly enough, every channel seem to be broadcasting exactly the same thing: a continuous news report. You are attempting to figure out what this all means, when suddenly the news anchor explains that an unidentified object has seen landing on the roof of a skycraper downtown, which is causing chaos in in the city. You look closer to the tube. The UFO appeared to be cylindrical shaped, kind of like a cigar. That frightens you. Then, all of a sudden, the video feed cuts off, leaving you with a few seconds of silence. A message then appeared on the screen, followed by a robotic voice. It was an amber alert.
echo.
echo TV (amber alert): Alert! This is an emergency brodcast requested by the government. At 5 AM this morning, there has been sightings of cigar shaped object navigating around the region. The origin and the intentions of these objects are unknown at this time. It has been reported that shortly after the first sightings, there has been a major fail in the communications sector, including landline telephones, cable television, and Internet networks. However, over the air television, AM/FM radio, and cellular networks are still available at this time. Due to the increase of calls due to the unusual events, please only use your cell phone in the event of an emergency. Stay tuned to this frequency to get updated information, or tune in to any AM or FM frequency.
echo.
echo Woah! What was that? This seems like an emergency of some kind. I better notify my friend Micheal about this!
echo.
echo You call Micheal with your cellular phone, even though you were advised not to. Micheal has not left his house for school yet. Unfortunately, Micheal did not believe you at first, thinking you were pulling some kind of prank. But after having him verify his Internet connection and phone line, he seemed to be kind of distressed.
echo.
echo Micheal: What the heck? This is not right. Are you sure that what you're telling me is true?
echo %name%: Dude I just saw it all on TV! Turn on your TV now!
echo Micheal: Alright! Alright! Let me get the remote. 
echo *turns oh television* 
echo Micheal: WHAT IS THAT? HOLY SMOKES! One of these cigar shaped objects just completely demolished an entire building on live TV!
echo %name%: All right. We gotta get toghether and find a way to defend ourselves. I'm pretty sure that you don't mind skipping school for today. I will be preparing supplies and bring them over. My parents just left town early this morning for a business meeting in Osaka, so I won't need to ask them permission. They should be fine as at this point their plane is far away and these giant cigars only seem to be appearing in our region, at least for now. I'll get there in 15 minutes tops.
echo Micheal: Alright, see you.
echo.
echo Now, it is time to bring supplies with you before exiting the house and bike to Micheal's house. What will you bring?
echo 1. Canned food, bottled water, swiss army knife
echo 2. Laptop, iPod, Nintendo DS
echo 3. Handheld radio tuner, Walkie-Talkies, FM transmitter
echo 4. Nerf guns
set /p number=
if %number% == 1 goto WIP
if %number% == 2 goto WIP
if %number% == 3 goto cableTV
if %number% == 4 goto WIP
if %number% == Q goto reset
if %number% == q goto reset

:bed
cls
echo You are still tired, even after sleeping for a night. You decide to keep sleeping for just a few minutes. Just a few... minutes... Nothing too long... ZZZ
ping localhost -n 3 >nul
color 04
echo YOU DIED!
echo You woke up 3 hours later. You clearly missed your bus, and at this point there is nothing you can do to go to school. You're gonna have to do some explaining to your parents!
echo M. Menu
echo R. Restart to previous point
echo S. Go back to start
set /p choice=
if %choice% == M goto menu
if %choice% == m goto menu
if %choice% == R goto level1
if %choice% == r goto level1
if %choice% == S goto level1
if %choice% == s goto level1
if %choice% == Q goto reset
if %choice% == q goto reset

:drawer
cls
echo You open your drawer to see if your iPod is there. After a little bit of moving abjects around, you finally found your iPod. You take your pair of headphones and head out with your bag and lunchbox to your bus stop. Your arrived just in time as the bus arrived the moment you got to your stop. You get on the bus and sit down next to your friend, Micheal. During the bus ride, you conversed about the latest games, technology, and your most recent computer knowledge. You had a very interesting conversation, so much so that the bus ride felt like it went by fast. You arrived at your destination (which is your school). Class starts in 15 minutes, so you have free time on your hands. What is the next thing you are going to do?
echo 1. Go to the computer lab
echo 2. Go to the cafeteria
echo 3. Go to the bathroom
echo 4. Go to class
set /p number=
if %number% == 1 goto WIP
if %number% == 2 goto WIP
if %number% == 3 goto WIP
if %number% == 4 goto WIP
if %number% == Q goto reset
if %number% == q goto reset

:pinball
cls
color 0a
echo You close Internet Explorer and you open the Space Cadet game that came preinstalled on your Windows XP system through the start menu subfolders. The game loads and you turn on the music. After playing a long game and beating your highscore, you noticed that you have no time to eat breakfast anymore and the bus is gonna come in any minute at this point.
echo You shouldn't have wasted time on your computer this morning!
echo What are you gonna do next?
echo 1. Quickly pack your bag and run out the house to catch the bus
echo 2. Don't worry about the tight time limit. There is time to eat breakfast
echo 3. WIP
echo 4. WIP
set /p choice=
if %choice% == 1 goto busBad
if %choice% == 2 goto breakfastBad
if %choice% == 3 goto WIP
if %choice% == 4 goto WIP
if %choice% == Q goto reset
if %choice% == q goto reset

:busBad
cls 
color 0a
echo You open your front door and run as fast as you can to your bus stop. You arrive just in time for your bus. Being so tired and disoriented after running for so long, you decide to sit down on the nearest bench to rest. The driver stops for the next stop. The school bully, ____ enters the bus. As this was the last stop, there isn't much space left so he didn't have much choice but to sit down next to you. Before you could think of anything, he speaks to you.
echo "Got any lunch money?"
echo What do you respond?
echo 1. Yes
echo 2. No
echo 3. Leave me alone
echo 4. Wanna eat lunch together?
set /p choice=
if %choice% == 1 goto WIP
if %choice% == 2 goto answerNo
if %choice% == 3 goto WIP
if %choice% == 4 goto WIP
if %choice% == Q goto reset
if %choice% == q goto reset

:breakfastBad
cls
echo You eat breakfast without much concern about the time. Once you finished eating, you get up to go brush your teeth. When walking by the microwave oven in the kitchen, you quickly glanced at the time.
ping localhost -n 3 >nul
color 04
echo YOU DIED!
echo It is too late to catch your bus now. Eating breakfast was a bad idea.
echo M. Menu
echo R. Restart to previous point
echo S. Go back to start
set /p choice=
if %choice% == M goto menu
if %choice% == m goto menu
if %choice% == R goto pinball
if %choice% == r goto pinball
if %choice% == S goto level1
if %choice% == s goto level1
if %choice% == Q goto reset
if %choice% == q goto reset

:answerNo
cls
echo The bully, unsatisfied with your answer, shatters the bus window and throws you out on the highway.
ping localhost -n 3 >nul
color 04
echo YOU DIED!
echo Good thing there was a lot of traffic today and that the bus was going very slow, otherwise you would be squished by a car.
echo M. Menu
echo R. Restart to previous point
echo S. Go back to start
set /p choice=
if %choice% == M goto menu
if %choice% == m goto menu
if %choice% == R goto busBad
if %choice% == r goto busBad
if %choice% == S goto level1
if %choice% == s goto level1
if %choice% == Q goto reset
if %choice% == q goto reset

:WIP
cls
color 06
echo This part of the game does not exist yet. Wanna start over? (y/n)
set /p choice=
if %choice% == Y goto level1
if %choice% == y goto level1
if %choice% == N goto menu
if %choice% == n goto menu
if %choice% == Q goto reset
if %choice% == q goto reset