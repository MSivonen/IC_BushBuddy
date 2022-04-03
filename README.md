# IC_BushBuddy </br>
 Automatic bush clicker and pilfer stacker addon for ICScriptHub </br>
 
<i>This addon is discontinued, since I'm not playing the game anymore. Anyone can freely use any/all parts of the addon, including all the files in this repository. Feel free to share your fixed version, if you make one.</br>
It's still working now, 3.4.22.</br>
If/when this stops working, could you please inform me (via discord/git), so I can add that information to this readme. Thank you.</i></br>
 </br>
What it does? </br>
Waits until Jim has killed enough mobs in E formation. </br>
Then spawns more mobs from bushes with Q formation. </br>
Then swaps to E formation, stops clicking bushes, and uses ults to stall/pushback the mobs. </br>
Without familiars insta-killing the chickens and Krull having a chance to attack them, there's a bigger chance for pilfer stacks to appear on chicken, and having less mobs on screen gives a better chance for the stacks to transfer to the boss. At least I think so.</br>
Repeats until the sun explodes, or you press the stop button. </br>
 </br>
 <b>Known bug: If you set the max monsters to 1, and the game lags a bit, it may be stuck to having only the boss on the level and never swapping to Q formation. Don't set it lower than 2. I'll fix it someday. If stuck, you can always manually swap between Q and E formations</br></b>
 </br>
Installation: </br>
Merge AddOns folder with ICScriptHub\AddOns folder and enable the addon with addon manager. </br>
 </br>
Instructions: </br>
Go to desired level (boss level with bush) and isolate the boss like you usually do. (Pushbacks or Vlahnya or something)</br>
 </br>
Have Havilar in both Q and E formations, familiar on ult. Krull needs to be in both formations or his stacks will disappear.</br>
Set formation Q to have six familiars in the field. </br>
Set formation E to include Jimothy and remove all familiars from the field.</br>
 </br>
Recommended to have slowing attacks in Q and also slow/pushback ults in E. </br>
Widdle adhd shenanigan is also very useful in E. </br>
 </br>
Check the checkboxes to select which ults to use. </br>
(optional) Set the delay after swap. 0 means use immediately after changed to E formation. </br>
 </br>
Max active monsters before clicking bushes: </br>
If you set this to 5, more mobs will be spawned when there is 5 left.</br>
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
 Max active monsters is set to 2 -> spawn more monsters when only the boss remains (this should work with 1, but there's the bug I told you above).</br>
 Cooldown is set to 240sec, because my longest cooldown of the champions used is Turiel's 230 seconds.</br>
 </br>
 </br>
 </br>
 </br>
Autohotkey is required: https://www.autohotkey.com/ </br>
ICScriptHub is required: https://github.com/mikebaldi/Idle-Champions </br>
Ask for help in Discord channel #Scripting, I'm there by the name Thatman: https://discord.com/invite/N3U8xtB </br>
Huge thanks to Mikebaldi for helping me with the memory read!

v1.0.1 fixed conflict with Jimothy addon
