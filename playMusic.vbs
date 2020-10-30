Set WsShell = CreateObject("WScript.Shell")

if WsShell.AppActivate("Spotify Free") then
WScript.Sleep 500
WsShell.SendKeys "^{RIGHT}"
WScript.Sleep 500
WsShell.SendKeys "%{ }"
WScript.Sleep 500
WsShell.SendKeys "n"
else
WScript.quit
end if