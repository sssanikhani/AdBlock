@echo off

:check
tasklist /fi "windowtitle eq Advertisement" | find ":" > nul
if errorlevel 1 goto restart
timeout 1 > nul
goto check

:restart
taskkill /f /im "Spotify.exe"
timeout 2 > nul
nircmd elevate "C:\Program Files\SpotifyAdBlock\Spotify"
timeout 2 > nul
cscript "C:\Program Files\SpotifyAdBlock\playMusic.vbs"
goto check