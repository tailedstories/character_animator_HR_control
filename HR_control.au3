;MsgBox(0,"", WinGetText("tailedstories's Mod View - Twitch — Mozilla Firefox",""))

;MsgBox(0,"", ControlGetText("Heart rate monitor","","[NAME:uxBpmLabel]"))

$x = 0
While 1
   ; heart rate 60 to 80
   if Int(ControlGetText("Heart rate monitor","","[NAME:uxBpmLabel]"))>60 And Int(ControlGetText("Heart rate monitor","","[NAME:uxBpmLabel]"))<= 80 and $x <> 1 Then
	  if $x == 2 Then
		 ControlSend("Adobe Character Animator 2021","","[CLASS:DroverLord - Window Class; INSTANCE:18]","n")
	  EndIf
	  ControlSend("Adobe Character Animator 2021","","[CLASS:DroverLord - Window Class; INSTANCE:18]","m")
	  $x=1
   EndIf
   ; heart rate over 80
   if Int(ControlGetText("Heart rate monitor","","[NAME:uxBpmLabel]"))>80 And $x <> 2 Then
	  ControlSend("Adobe Character Animator 2021","","[CLASS:DroverLord - Window Class; INSTANCE:18]","n")
	  $x=2
   EndIf
   ; heart rate under 60
   if Int(ControlGetText("Heart rate monitor","","[NAME:uxBpmLabel]"))<=60 And $x <> 3 Then
	  if $x == 2 Then
		 ControlSend("Adobe Character Animator 2021","","[CLASS:DroverLord - Window Class; INSTANCE:18]","n")
	  EndIf
	  if $x == 1 Then
		 ControlSend("Adobe Character Animator 2021","","[CLASS:DroverLord - Window Class; INSTANCE:18]","m")
	  EndIf
	  $x=3
   EndIf
   Sleep(100)
WEnd