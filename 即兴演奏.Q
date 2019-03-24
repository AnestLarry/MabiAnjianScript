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
MacroID=bd5bd131-1310-4444-8f0d-4fcfb6d0dd33
Description=即兴演奏
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
UEsDBBQAAgAIAJASj0k6V2SsWQAAABYBAAAFABEARC5ibXBVVA0AB9j9UVjYOlFY1jpRWHPyFWNkAAMzINYAYi4gZgdiRgYJsPgDID7CB8EwoCLzFoj6wKCtrQ3ChSOYPBD19vZCVOGQB6KWlmY0JajyQNTT04NbvqOjAygJtAibfGdnJ5rlSPK43Q8AUEsDBBQAAgAIAGYSj0nKPEZjhAAAABYCAAAFABEAdy5ibXBVVA0AB5f9UVgsO1FYKjtRWHPyFWNiAAMzINYAYn4g5gJiRgYJsPgDRgaGI3wQDAMqMm+JR0D1vb293d3deNS0trYC1XR1dUHU9/T0ALlAQVzqgbJANXDzISJAgEsxshTc/Vi1YAoi+xfZXiDq6OjANAFZPcRfLS0tYMXtWD2FFp69SADZLlzq4VqwKsaqHqIFT3wBAFBLAwQUAAIACAB+Eo9JTsi3Tn0AAADGAQAABQARAFMuYm1wVVQNAAez/VFYbztRWG47UVhz8j3GyAAGZkCsAcS8QMwFxIwMEmDxCUD5I3wQDAMqMm+JQVjU9fb2ElbXCwY9PT341PUiATSlCHWtra1A6abGRiC7ra0NyAaKoKsrKipCM6O9vR0oAhRHUQexC6tbEeog/PT0NKx+hyhlANoFZDU3N2ENtry8XIh7iA5nAFBLAwQUAAIACAC+Eo9JeVjTSHEAAAB6AQAABQARAEEuYm1wVVQNAAc7/lFYODpRWJ46UVhz8q1iZAADMyDWAGJuIOYEYkYGCbC4C1D+CB8Ew4CKzFs0VFRU1AcGLS0tQC6mmra2NogCuAiaGohsb28vsiCyGpj5zWgmQ9Tk5eVBFPT09GA6D9kcoBVAZR0dHXjUwJV1dnbiUUOMv9DCp6SkGKIGAFBLAQIXCxQAAgAIAJASj0k6V2SsWQAAABYBAAAFAAkAAAAAAAAAIACAgQAAAABELmJtcFVUBQAH2P1RWFBLAQIXCxQAAgAIAGYSj0nKPEZjhAAAABYCAAAFAAkAAAAAAAAAIACAgY0AAAB3LmJtcFVUBQAHl/1RWFBLAQIXCxQAAgAIAH4Sj0lOyLdOfQAAAMYBAAAFAAkAAAAAAAAAIACAgUUBAABTLmJtcFVUBQAHs/1RWFBLAQIXCxQAAgAIAL4Sj0l5WNNIcQAAAHoBAAAFAAkAAAAAAAAAIACAgfYBAABBLmJtcFVUBQAHO/5RWFBLBQYAAAAABAAEAPAAAACbAgAAAAA=


[Script]
UserVar FoX = 0 "X坐标"
UserVar FoY = 0 "Y坐标"
UserVar FoW = 1024 "W坐标"
UserVar FoH = 768 "H坐标"
UserVar FGS1 = DropList{"----------":1}=1 "------------"
UserVar FB_Mod = DropList{"使用以上数据作为分辨率":1|"我特喵啥都看不懂求智能（全屏）":2}=1 "分辨率模式"
UserVar G_Ms = 1000 "延迟/毫秒"
UserVar G_Ms2 = 1000 "延迟/毫秒"
UserVar Tips = DropList{"请手动往下拉↓":1|"仅供娱乐使用":2|"请与作者保持友好关系":3}=1 "Tips"

If FB_Mod = 1 Then 
    SX = FoX
    SY = FoY
    SW = FoW
    SH = FoH
ElseIf FB_Mod = 2 Then
    SX = 0
    SY = 0
    SW = Plugin.Sys.GetScRX()
    SH = Plugin.Sys.GetScRY()
End If
while_Always = 0

While while_Always = 0
    
    Call Find_Pic
    Call Find_Pic_Go
    Call Data
    Call Need
    Call Clean
    Delay G_Ms2

Wend


Sub Find_Pic
    Call Plugin.ColorEx.PrintScreen(SX, SY, SW, SH)
    AXY = Plugin.ColorEx.FindPic(SX, SY, SW, SH, "A.bmp", 1, 0)
    SXY = Plugin.ColorEx.FindPic(SX, SY, SW, SH, "S.bmp", 1, 0)
    DXY = Plugin.ColorEx.FindPic(SX, SY, SW, SH, "D.bmp", 1, 0)
    WXY = Plugin.ColorEx.FindPic(SX, SY, SW, SH, "W.bmp", 1, 0)
End Sub

Sub Find_Pic_Go
    A_XY=Split(AXY,"|")
    S_XY=Split(SXY,"|")
    D_XY=Split(DXY,"|")
    W_XY=Split(WXY,"|")
    If A_XY(0) <= SX Then 
        A_XY(0)=SW
    ElseIf S_XY(0) <= SX Then 
        S_XY(0)=SW
    ElseIf D_XY(0) <= SX Then 
        D_XY(0)=SW
    ElseIf W_XY(0) <= SX Then 
        W_XY(0)=SW
    End If
    Dim A(3)
    A(0)=A_XY(0)
    A(1)=S_XY(0)
    A(2)=D_XY(0)
    A(3)=W_XY(0)
    i = 0
    DataMin = A(1)
    j = 0
    For i = 0 To 3
        If a(i) < DataMin Then
            DataMin = a(i)
            j = i
        End If
    Next 
End Sub

Sub Data
    TracePrint DataMin
    Rem Data_Again
    If DataMin <> SH Then 
        If DataMin = A_XY(0) then
            Output = Output + "A"
        Elseif DataMin = S_XY(0)
            Output = Output + "S"
        Elseif DataMin = D_XY(0)
            Output = Output + "D"
        Elseif DataMin = W_XY(0)
            Output = Output + "W"
        End If
    Else 
        Call Twice
        Goto Data_Again
    End If
    
End Sub

Sub Need
    For len(Output)
        Output_Temp = left(Output, 1)
        Output = right(Output, len(Output) - 1)
        TracePrint Output
                If Output_Temp = "A" Then 
                    KeyPress "A", 1
                    Delay G_Ms
                ElseIf Output_Temp = "S" Then
                    KeyPress "S", 1
                    Delay G_Ms
                ElseIf Output_Temp = "D" Then
                    KeyPress "D", 1
                    Delay G_Ms
                ElseIf Output_Temp = "W" Then
                    KeyPress "W", 1
                    Delay G_Ms
                End If
    Next
End Sub

Sub Clean
    Output = ""
    Output_Temp=""
End Sub

Sub Twice
    AXY = Plugin.ColorEx.FindPic(DataMin, SY, SW, SH, "A.bmp", 1, 0)
    SXY = Plugin.ColorEx.FindPic(DataMin, SY, SW, SH, "S.bmp", 1, 0)
    DXY = Plugin.ColorEx.FindPic(DataMin, SY, SW, SH, "D.bmp", 1, 0)
    WXY = Plugin.ColorEx.FindPic(DataMin, SY, SW, SH, "W.bmp", 1, 0)
    A_XY=Split(AXY,"|")
    S_XY=Split(SXY,"|")
    D_XY=Split(DXY,"|")
    W_XY=Split(WXY,"|")
    If A_XY(0) <= DataMin Then 
        A_XY(0)=SW
    ElseIf S_XY(0) <= DataMin Then 
        S_XY(0)=SW
    ElseIf D_XY(0) <= DataMin Then 
        D_XY(0)=SW
    ElseIf W_XY(0) <= DataMin Then 
        W_XY(0)=SW
    End If
    Dim A(3)
    A(0)=A_XY(0)
    A(1)=S_XY(0)
    A(2)=D_XY(0)
    A(3)=W_XY(0)
    i = 0
    DataMin = A(1)
    j = 0
    For i = 0 To 3
        If a(i) < DataMin Then
            DataMin = a(i)
            j = i
        End If
    Next 

End Sub

Sub onScriptExit()
    Call Plugin.ColorEx.Free()
End Sub
