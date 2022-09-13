class BushBuddy
{

    ultused := {}
    startTime := 0
    bushRunning := False

    BushInitialize()
    {
        g_SF.Hwnd := WinExist("ahk_exe " . g_UserSettings[ "ExeName" ])
        g_SF.Memory.OpenProcessReader()
        return
    }

    Bush_Run()
    {
        this.BushInitialize()
        global g_BushSettings
        famFormation := 0
        BushZone := g_SF.Memory.ReadCurrentZone()
        this.startTime := A_TickCount - g_BushSettings.bushDelay * 1000
        g_SF.DirectedInput(,, "{e}" )
        loop, 10
        {
            this.ultUsed[A_Index] := 1
        }
        while (this.bushRunning)
        {
            sleep 10
            activeMonsters := % g_SF.Memory.ReadActiveMonstersCount()
            timeScale := g_SF.Memory.ReadTimeScaleMultiplier()
            currentTime := ( A_TickCount - this.startTime ) / 1000 * timeScale
            cooldown := floor(g_BushSettings.bushDelay - currentTime)
            GuiControl, ICScriptHub:, BushDelaySaved, % cooldown > 0 ? "Cooldown left: " . cooldown:"Cooldown left: " . "Ready"
            GuiControl, ICScriptHub:, BushMonsters, Monsters in area: %activeMonsters%
            GuiControl, ICScriptHub:, BushFormation, % famFormation == 1 ? "Formation in use: familiars on field":"Formation in use: no familiars on field"

            if ( activeMonsters > g_BushSettings.MaxMonsters )
            {
                if ( famFormation == 0 )
                {
                    this.useUltimates()
                }
                else if (famFormation == 1) ;set to E formation
                {
                    famFormation := 0
                    g_SF.DirectedInput(,, "{e}" )                
                    this.startTime := A_TickCount
                }
            }
            if (famFormation == 0 AND activeMonsters <= g_BushSettings.MaxMonsters and g_BushSettings.bushDelay < currentTime ) ;set to Q formation
            {
                famFormation := 1
                g_SF.DirectedInput(,, "{q}" )
                loop, 10
                {
                    this.ultUsed[A_Index] := 0
                }
            }
        }
        return
    }

    useUltimates()
    {
        global g_BushSettings
        timeScale := g_SF.Memory.ReadTimeScaleMultiplier()
        currentTime := ( A_TickCount - this.startTime ) / 1000 * timeScale
        loop, 10
        {
            if ( g_BushSettings.Ult[A_Index] and g_BushSettings.UltDelay[A_Index] < currentTime and !this.ultused[A_Index])
            {
                this.ultUsed[A_Index] := 1
                g_SF.DirectedInput(,, A_Index )
            }
        }
    }
}