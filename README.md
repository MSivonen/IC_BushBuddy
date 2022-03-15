# IC_BushBuddy </br>
 Automatic bush clicker and pilfer stacker addon for ICScriptHub </br>
 </br>
What it does? </br>
Waits until Jim has killed enough mobs in E formation. </br>
Then spawns more mobs from bushes with Q formation. </br>
Then swaps to E formation, stops clicking bushes, and uses ults to stall/pushback the mobs. </br>
Repeats until the sun explodes, or you press the stop button. </br>
 </br>
 <b>Known bug: If you set the max monsters to 1, and the game lags a bit, it may be stuck to having only the boss on the level and never swapping to Q formation. Don't set it lower than 2. I'll fix it someday.</br></b>
 </br>
Installation: </br>
Sorry, this is not as smooth as it could be. Improvement suggestions/solutions are welcome. </br>
You have to manually add one line to SharedFunctions\MemoryRead\IC_GameManager_Class.ahk </br>
Put it to line 121, below blahblah.ActivePatron.Tier and above "Screen Resolution" </br>
Paste this there (it is one line, not two. It's just too long to fit here): </br>
 </br>
this.Game.GameInstance.Controller.Area.activeMonstersListSize := New GameObjectStructure(this.Game.GameInstance.Controller.Area,, [0x1C, 0xC]) ; push - activeMonsters, _size </br>
 </br>
 </br>
Instructions: </br>
Go to desired level (boss level with bush) and isolate the boss like you usually do. </br>
 </br>
Have Havilar in both Q and E formations, familiar on ult. Krull needs to be in both formations.</br>
Set formation Q to have six familiars in the field. </br>
Set formation E to include Jimothy and remove all familiars from the field. Without familiars insta-killing the mobs, there's a bigger chance for pilfer stacks to appear on chicken and transfer to boss. At least I think so.</br>
 </br>
Recommended to have slowing attacks in Q and also slow/pushback ults in E. </br>
Widdle adhd shenanigan is also very useful in E. </br>
 </br>
Check the checkboxes to select which ults to use. </br>
(optional) Set the delay after swap. 0 means use immediately after changed to E formation. </br>
 </br>
Max active monsters before clicking bushes: </br>
If you set this to 5, more mobs will be spawned when there is 4 left.</br>
 </br>
Cooldown: </br>
Set it to the same amount (or a bit more) as your longest ult cooldown. </br>
 </br>
All times are game time seconds, not real time. No need to change the settings if you use speed potions. </br>
 </br>
 </br>
 </br>
 Example of settings:</br>
 ![settings](settings.jpg?raw=true "Settings example") </br>
Example of Q formation: </br>
  ![q](Q_formation.jpg?raw=true "Q formation example") </br>
Example of E formation: </br>
 ![e](E_formation.jpg?raw=true "E formation example") </br>
</br>
</br>
 Here in Q formation I have pushback/slowing champions hitting, and Desmond and He-Man for speed. Jim and Turiel are not required. Six famililars on the field and fam on Havi's ult.</br>
 In E formation Arkhan usurps attack speed boost from Hew Maan to 0.98s/attack and Widdle spreads the attack speed to adjacents, which are Jim and slowing champs.</br>
 Settings are set so ultimate attacks go in this order:</br>
 1. Turiel immediately when swapped to E</br>
 2. Gromma 5sec after swap</br>
 3. Aila 20sec after swap</br>
 4. Pwent 30sec after swap</br>
 To be clear: The timings are NOT first ult+5sec+20sec+30sec.</br>
 Every timer starts when swapped to E formation.</br>
 Max active monsters is set to 2 -> spawn more monsters when only the boss remains.</br>
 Cooldown is set to 240sec, because my longest cooldown of the champions used is Turiel's 230 seconds.</br>
 </br>
 </br>
 </br>
 </br>
Autohotkey is required: https://www.autohotkey.com/ </br>
ICScriptHub is required: https://github.com/mikebaldi/Idle-Champions </br>
Ask for help in Discord channel #Scripting, I'm there by the name Thatman: https://discord.com/invite/N3U8xtB </br>
Huge thanks to Mikebaldi for helping me with the memory read!
