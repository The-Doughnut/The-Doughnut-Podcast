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
echo.
echo Note to self: replace the logo with something cleaner later
ping localhost -n 5 >nul
cls

@echo off
cls
:menu
cls
color 0a
echo Welcome to (title of the game)
echo Please type a number, then press enter
echo 1. Start
echo 2. Info
echo 3. Stats
echo 4. Credits
echo 5. Exit
echo Game made by Doughnut
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
echo Current game version: 0.1.2
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
echo There are 342 lines of code.
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
if %number% == 1 goto WIP
if %number% == 2 goto WIP
if %number% == 3 goto WIP
if %number% == 4 goto WIP
if %number% == Q goto reset
if %number% == q goto reset
goto breakfast

:youtube
cls
echo You decide to start your day by watching a few YouTube videos. You hop on your computer and wake it from sleep mode. You open up Internet Explorer, your web browser of choice and you start typing www.youtube.com on the search bar, and press enter. But alas, it did not work. It seems that the network is down. What are you going to do next?
echo 1. Investigate the bad network
echo 2. Give up and go eat breakfast
echo 3. Give up and go brush your teeth
echo 4. Give up and play Pinball 3D Space Cadet
set /p number=
if %number% == 1 goto WIP
if %number% == 2 goto breakfast
if %number% == 3 goto teeth
if %number% == 4 goto pinball
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
echo You open your drawer to see if your iPod is there. After a little bit of moving abjects around, you finally found your iPod. You take your pair of headphones and head out with your bag and lunchbox to your bus stop. Your arrived just in time as the bus arrived the moment you got to your stop. You get on the bus and sit down next to your friend, Micheal.

:desk
cls 
echo text

:underBed
cls
echo text

:ignoreIpod
cls
echo text

:network
cls
echo text

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
echo You open your front door and run as fast as you can to your bus stop. You arrive just in time for your bus. Being so tired and disorientating after running for so long, you decide to sit down on the nearest bench to rest. The driver stops for the next stop. The school bully, ____ enters the bus. As this was the last stop, there isn't much space left so he didn't have much choice but to sit down next to you. Before you could think of anything, he speaks to you.
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