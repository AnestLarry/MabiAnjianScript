[General]
SyntaxVersion=2
BeginHotkey=32778
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=32775
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=99200ff3-daf4-4c2b-88a2-be484b8780d8
Description=挤牛奶
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Attachment]
UEsDBBQAAgAIABxPbkiLWiMiTgAAAD4CAAAHABEAVXNlLmJtcFVUDQAHzormVkqK5lZKiuZWc/K1Y2IAAzMg1gBiQSDmAmJGBgmwOAdUHhmoyLwlFVGg5z8MYOWiiTBA+MhyyEZCuGiCOPVgtRafPVhtgzMI2IPVWgL+wRlu5OghOX4AUEsDBBQAAgAIAK5ObkhpbGku6AAAAIYIAAAIABEAxaPEzC5ibXBVVA0AByOK5la/ieZWv4nmVu3UzwmDMBQGcAtWI/g3px56LKUTdIBeeip0C0dwg4IjOEJGyAwZISNIJ+jBfsRGAgWJrz36kRyM+ZkXeHi5PVhgcsY8YXLMI+Ym2Jn1++e9m8P+OY1Xr93R1Fd3uDutwzI2bk3SNOWc53meJAkeoyjKsgwrrjZuREVRDLMBxQdGahxQVVWDR1CEdeNhg3dwpOya5Q7VWtf3yt+hVCkIjjGmRLvchWGoZEdyWhEcOkErsdzFcUxy6EKSK8uS5NDGJIc+o95PyZbkpj7TPzo9m8mJrrZ1ar983U97x9bp/qX8x+pWt7p/uDdQSwECFwsUAAIACAAcT25Ii1ojIk4AAAA+AgAABwAJAAAAAAAAACAAgIEAAAAAVXNlLmJtcFVUBQAHzormVlBLAQIXCxQAAgAIAK5ObkhpbGku6AAAAIYIAAAIAAkAAAAAAAAAIACAgYQAAADFo8TMLmJtcFVUBQAHI4rmVlBLBQYAAAAAAgACAH0AAACjAQAAAAA=


[Script]
Delay 500
Call Plugin.Msg.Tips("Please put the mouse into fixed cow")
Rem 奶牛位置
var1 = GetCursorShape(0)

If var1 = 1581305871 Then 
    Call Plugin.Msg.Tips("Start")
    Goto 开始脚本

End If
Goto 奶牛位置
Rem 开始脚本

SaveMousePos 
Delay 300
LeftClick 1
Delay 5900
FindPic 0,0,200,500,"Attachment:\牛奶.bmp",1,NNX,NNY
If NNX > 0 And NNY > 0 Then 
    MoveTo NNX + 2, NNY + 2
    Delay 300
    RightClick 1
    Delay 800
    FindPic 0,0,2000,2000,"Attachment:\Use.bmp",1,UX,UY
    If UX > 0 And UY > 0 Then 
        MoveTo UX + 1, UY + 1
        Delay 300

        LeftClick 1
        Delay 1200

        Goto 后续脚本内容
    End If

End If
Rem 后续脚本内容
RestoreMousePos 
Delay 500

var1 = GetCursorShape(0)
If var1 = 1581305871 Then 
    Goto 奶牛还在
    Else 
Call Plugin.Msg.Tips("The cow was escaped")
    EndScript
End If



Rem 奶牛还在
Delay 300
LeftClick 1
Delay 5900
FindPic 0,0,200,500,"Attachment:\牛奶.bmp",1,NNX,NNY
If NNX > 0 And NNY > 0 Then 
    MoveTo NNX + 2, NNY + 2
    Delay 300
    RightClick 1
    Delay 800
    FindPic 0,0,2000,2000,"Attachment:\Use.bmp",1,UX,UY
    If UX > 0 And UY > 0 Then 
    
        MoveTo UX + 1, UY + 1
        Delay 300

        LeftClick 1
        Delay 1200

    End If

End If
Goto 后续脚本内容
Call Plugin.Msg.Tips("Stop")
