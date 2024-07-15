#Requires AutoHotkey v2.0
#SingleInstance

Esc::ExitApp

For key in ["PgUp","PgDn","WheelUp","WheelDown","Up","Down","Left","Right","Home","End"]
  Hotkey(key,(key)=>(Send("{Click}{" key "}"), MouseClick(,200,0,,0,,"R"),
    Send("{" key "}"), MouseClick(,-200,0,,0,,"R")))
