@echo off
title PS5 Custom Tool Manager
color 0A
cls

echo.
echo  PS5 Custom Tool Manager V1
echo.

set "ELF=%~dp0PS5 Custom Tool Manager V1.elf"
set "PS5PORT=9021"

if not exist "%ELF%" (
    echo ERREUR: ELF introuvable:
    echo %ELF%
    echo.
    pause
    exit /b 1
)

set /p PS5IP=IP de la PS5: 
if "%PS5IP%"=="" (
    echo IP vide.
    pause
    exit /b 1
)

echo.
echo Envoi du payload vers %PS5IP%:%PS5PORT% ...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
 "$ErrorActionPreference='Stop';" ^
 "$ip=$env:PS5IP; $port=[int]$env:PS5PORT; $path=$env:ELF;" ^
 "$bytes=[IO.File]::ReadAllBytes($path);" ^
 "$client=[Net.Sockets.TcpClient]::new();" ^
 "$client.Connect($ip,$port);" ^
 "$stream=$client.GetStream();" ^
 "$stream.Write($bytes,0,$bytes.Length);" ^
 "$stream.Flush();" ^
 "$stream.Dispose(); $client.Dispose();" ^
 "Write-Host ('OK envoye: {0} bytes' -f $bytes.Length)"

if errorlevel 1 (
    echo.
    echo ERREUR: rien envoye. Verifie que le loader payload ecoute bien sur 9021.
    echo.
    pause
    exit /b 1
)

echo.
echo Ouvre ensuite depuis la PS5, ton PC ou ton telephone:
echo http://%PS5IP%:8089/
echo.
pause
