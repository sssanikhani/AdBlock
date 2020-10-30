@echo off

:check
tasklist /fi "windowtitle eq Advertisement" | find ":" > nul
if errorlevel 1 goto restart
timeout 1 > nul
goto check

:restart
taskkill /f /im "Spotify.exe"
timeout 2 > nul
nircmd elevate <Spotify.exe Path>
timeout 2 > nul
cscript <playMusic.vbs Path>

goto check