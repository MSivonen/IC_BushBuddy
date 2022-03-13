global ultused := {}
global startTime := 0
global activeMonstersListSize := 

Initialize()
{
    g_SF.Hwnd := WinExist("ahk_exe IdleDragons.exe")
    g_SF.Memory.OpenProcessReader()
return
}

Bush_Run()
{
    Initialize()
    famFormation := 0
    BushZone := g_SF.Memory.ReadCurrentZone()
    activeMonstersListSize := New g_SF.Memory.GameManager.GameObjectStructure(g_SF.Memory.GameManager.Game.GameInstance.Controller.Area,, [0x1C, 0xC]) ; push - activeMonsters, _size
    startTime := A_TickCount - g_BushSettings.bushDelay * 1000
    g_SF.DirectedInput(,, "{e}" )
    loop, 10
        {
            ultUsed[A_Index] := 1
        }

    while (bushRunning)
    {
        sleep 10
        activeMonsters := % ReadActiveMonsters()

        timeScale := g_SF.Memory.ReadTimeScaleMultiplier()
        currentTime := ( A_TickCount - startTime ) / 1000 * timeScale
        cooldown := floor(g_BushSettings.bushDelay - currentTime)
        GuiControl, ICScriptHub:, BushDelaySaved, % cooldown > 0 ? "Cooldown left: " . cooldown:"Cooldown left: " . "Waiting for monsters to die..."
;, % BushDelay < 1 ? bushDelay:"Waiting for monsters to die..."
        GuiControl, ICScriptHub:, BushMonsters, Monsters in area: %activeMonsters%
        GuiControl, ICScriptHub:, BushFormation, % famFormation == 1 ? "Formation in use: familiars on field":"Formation in use: no familiars on field"

        if ( activeMonsters > g_BushSettings.MaxMonsters )
            {
            if ( famFormation == 0 )
                {
                    useUltimates()
                }

            else if (famFormation == 1) ;set to E formation
                {
                    famFormation = 0
                    g_SF.DirectedInput(,, "{e}" )                
                    startTime := A_TickCount
                }
            }

        ;   GuiControl, ICScriptHub:, TestTXT, % ultUsed[3]

        if (famFormation == 0 AND activeMonsters <= g_BushSettings.MaxMonsters and g_BushSettings.bushDelay < currentTime ) ;set to Q formation
            {
            famFormation = 1
            g_SF.DirectedInput(,, "{q}" )
            loop, 10
                {
                    ultUsed[A_Index] := 0
                }
            }
    }
return
}

useUltimates()
{
    timeScale := g_SF.Memory.ReadTimeScaleMultiplier()
  ; GuiControl, ICScriptHub:, TestTXT, % currentTime
   loop, 10
        {
            if ( g_BushSettings.Ult[A_Index] and g_BushSettings.UltDelay[A_Index] < currentTime and !ultused[A_Index])
                {
                    ultUsed[A_Index] := 1
                    g_SF.DirectedInput(,, A_Index )
                }
        }
}

ReadActiveMonsters()
{
  return g_SF.Memory.GenericGetValue(g_SF.Memory.GameManager.Game.GameInstance.Controller.Area.activeMonstersListSize)

}
