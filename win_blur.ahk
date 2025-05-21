#SingleInstance Force
SetWorkingDir A_ScriptDir
Persistent
global processedWindows := Map()  ; Map to track processed window IDs
SetTimer CheckNewWindows, 500    ; Check for new windows every 500ms

CheckNewWindows()
{
    windowList := WinGetList()  ; Get list of all windows
    for thisWindow in windowList
    {
        ; Skip if window already processed
        if processedWindows.Has(thisWindow)
            continue
        try {
            ; Skip minimized, non-existent, or desktop/shell windows
            if (WinGetMinMax("ahk_id " thisWindow) = -1 || !WinExist("ahk_id " thisWindow))
                continue
            ; Skip specific system windows (e.g., desktop, taskbar)
            winTitle := WinGetTitle("ahk_id " thisWindow)
            if (winTitle = "Program Manager" || winTitle = "")
                continue
            ; Apply transparency
            WinSetTransparent 220, "ahk_id " thisWindow
            ; Mark window as processed
            processedWindows[thisWindow] := true
        }
    }
}