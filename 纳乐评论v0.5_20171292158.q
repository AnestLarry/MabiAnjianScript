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
MacroID=9680d5cc-4ba2-4e33-ab2c-346801ef2fae
Description=纳乐评论v0.5
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
作曲技能：2

[Attachment]
UEsDBBQAAgAIAEoqPErHIcvgIQEAAIIdAAAIABEA1/fH+i5ibXBVVA0AB70pjFi9KYxYvCmMWO2ZTQ6CQAyFdWUAEVZEEg0hzMITeADXegsv4dazeR3PgM9pbJoREDf+zPRlpin1LeiXMgmyO5zXE6st9gb7iF1iTydLW9/j98uC9kNmdT2pRohAIep6uZiYLmXlB6s8z7MsQ3RyaVgMyvH7yorgJElCiGTuGAYEQwisiEPbttQy52ma8thQcUAwhMyKBWiy2JcEy0oqjmNlpXP17sEuUTyzQuVnz6v5Z4UeZ1boFzGKIspZuMQzyIaB5JO3/ZW5KssSnVKkhCukqqrqupbFvsT/88oYCUpGiUtZObi4cUdFUXTWpUJhtbo2TdM5MCRjxZedtrsjkHfnp9Hqbn+kzfv/GSwHHqFeAiNtfrP6q6WslJWyUlbKyktWRr8Pjv4+eANQSwMEFAACAAgACis8SkSJnxu8AQAAFhEAAAgAEQBGcmVlLmJtcFVUDQAHFSuMWKIpjFifKYxY7VhBboNADKQXECQUuKAiReIAQrygp55674P6234gb0ittXAGexdIK7VCYhSQ18zas7NLFOX9o64ih1e6Rrre6Hqh68ndo+irjAz6y/VzV2DBdN/RR5Qfmv9ec1mWzxMoVhlGURQ4ZBoyJROqaT+2i5fs1Ux6ThPyPKdZmJG8GnJHyRcTSgesgEkOxIeTAXNWNRPzNkHk3eZIkgSHuAqVETFI5m3CpzhXVSbCQz7zLAw4zrIM3eCn0oUbSR6FKR+4jkzELjLcollOl1S2vZQqG/DBsLIVTbX4sc8s2G4ZOiBHd0FzVVWo0+sAnxDvbj7kMzocWrs6vV6CWK1UoTC78I0+n+cgWuLA7xoGEsdxjO8jPpJkmqbqVbWgOqq+BZ15lOf1uWkaKiJ3DCRu21ZlLK2ua5W0ZOKweM54QY/Wz3PfL1RAzcseEqHrOrVMzFMjDpCJdgl50/fGJNv6g72UaWrYOYS2aRiGcRxDBMxs1Xy54sJn20TYthe9g6KhEpKN5vzqbASsvgsGQsicOxNoKIw5Mkto9u2YNV39XefqqCkLtHUy6Mf9UguUDfJWO34/H5oPzf+ueY//FXwDUEsBAhcLFAACAAgASio8Sschy+AhAQAAgh0AAAgACQAAAAAAAAAgAICBAAAAANf3x/ouYm1wVVQFAAe9KYxYUEsBAhcLFAACAAgACis8SkSJnxu8AQAAFhEAAAgACQAAAAAAAAAgAICBWAEAAEZyZWUuYm1wVVQFAAcVK4xYUEsFBgAAAAACAAIAfgAAAEsDAAAAAA==


[Script]
UserVar FoX = 0 "X坐标"
UserVar FoY = 0 "Y坐标"
UserVar FoW = 1024 "W坐标"
UserVar FoH = 768 "H坐标"
UserVar FGX2 = Droplist{"-------":1}=1 "--------"
UserVar FB_Mod = Droplist{"局部":1|"全屏":2}=2 "分辨率模式"
UserVar Num = 100 "循环次数"
Call Plugin.Sys.SetCLB("rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr")
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

While a <= Num
    KeyPress "2", 1
    FindPic SX,SY,SW,SH,"Attachment:\作曲.bmp",1,intX,intY
    If intX > SX And intY > SY Then 
        MoveTo intX - 41, intY - 556
        Delay 200
        LeftClick 1
        SayString ".."
        Delay 200
        MoveTo intX, intY - 257
        Delay 200
        LeftClick 1
        Delay 100

        KeyDown 17, 1
        KeyPress 86, 1
        KeyUp 17, 1
        //        SayString "rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr"
        MoveTo intX +5, intY +2
        Delay 200
        LeftClick 1
        Delay 200
        FindPic SX,SY,SW,SH,"Attachment:\Free.bmp",1,intX,intY
        If intX > SX And intY > SY Then 
            MoveTo intX + 15, intY + 5
            Delay 200
            LeftClick 1
            Delay 200
     
            MoveTo SX,SY
            Delay 4000
            KeyPress "Esc", 1
        End If
        a=a+1

    End If

Wend
