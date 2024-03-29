#Requires AutoHotkey v2.0
#SingleInstance

TraySetIcon "C:\Users\utente\AppData\Local\Programs\AutoHotkey\Resources_Dave\AHK_DoubleCurs.ico"

F2::(A_ThisHotkey=A_PriorHotkey and A_TimeSincePriorHotkey<200)? Reload(): {}

Esc::ExitApp

PgUp::
PgDn::
Up::
Down::
Left::
Right::
Home::
End::
WheelUp::
WheelDown::
{
    send "{LButton}"
    sleep 10
    send "{" A_ThisHotKey "}"
    mousemove 200, 0, 0, "R"
    send "{LButton}"
    sleep 20
    send "{" A_ThisHotKey "}"
    mousemove -200, 0, 0, "R"
    send "{LButton}"
}

