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
MacroID=e39db601-f165-4999-82fa-84eabed05aa8
Description=自动放飞孔明灯
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
UEsDBBQAAgAIAIgqL0kmedf9EAMAAPYJAAAJABEAVGltZXIuYm1wVVQNAAeUL9pX+izaV/os2le9Vc9rE0EUXpO2Jk1CNTVRQUNsRWuDEqW0Jz1EKir2VkUvHooHoaFS9dKr+AeIF0GkeBGhKlilKNqDaIugF72pmIOIIU0r2HSNND92/GbfdjKZ3cTtxfI2bN8379tv3rz3JjVU9GvmXz+eHjx9eDbh2aBtM/2vLFz+OzXdtTlpaFpD8/grjaB9cYZwskCiRM5eySls+4jeErSi2hMlBW2Jlglqi5QVCE7DYHZbzLOzw6whushRhYQZdU5hj5+wbJZHFQps6iELabU1k3fZu/c8EDbznB3ay7Ze/FmTHTSAIhC/YJYNJPhoE9S+Qbu2W7e5f26e3bjJheEdOo/0s3A6e2GELSxwVViTHuUv+TwbPMy2jH8R4VCLECzDiy9mKOQy6o2u2tNiaqvaBcPiYR6I8DuTlp92eu063/XLWa4HgofPsHBKn37KoQ8fAVUEQ8dB49IV7s9kVHKYd7c+Ns5JHNHmRkl7Mct83damHjwSAgwcMWiRsR1jOUAgp+THO+u+0trBiAcJtwvQfGVCwelenhb883rOypKcSRIAHhyfnGqoZSYEv70pqB6QHyjvPL/cEA27koejQWYQ4th6qBDR8oo2QI5lI8tzj2qxAn0lMlq0y3DUhuRASS7HzyuU1KmwqWFFJr1d+pp+XoGhwfKnzzz2zTzfl693VUY9A0WBBjxG8z51o40M72iWmWf8HcWptZUa0VJjUk2KPDui/9DWWqGxhmoXzlrBm4XHzAoXIrHxiQmJwa8yyFvDu4WmHVC5tOwzxJ9YQRIMc0oE9vNODJ+cQhQNYdo1jWtsE36zAuuuho19K1RF+N2VZEove/xVge5MlJt0ut2il7/du89Xfs1YI+vYiV/U72CTtTUhOXear6eZjE+TGKS3PcXFQIOCUvK1gd9uWpWGLYkBA3jwL64quQyUm7onJp3IniWUIvU7GT5dQw8sgZPmpKgKlyMuevVtsLtI8sjAA3/kuC4qmdWbclPz2Xv0BxbjxCEDVSpmjiVv6HsN5Q1SXdftoGlFcK5VlKFcc3Zb7+3z/+0vUEsBAhcLFAACAAgAiCovSSZ51/0QAwAA9gkAAAkACQAAAAAAAAAgAICBAAAAAFRpbWVyLmJtcFVUBQAHlC/aV1BLBQYAAAAAAQABAEAAAABIAwAAAAA=


[Script]
UserVar FoX = 0 "X坐标"
UserVar FoY = 0 "Y坐标"
UserVar FoW = 1024 "W坐标"
UserVar FoH = 768 "H坐标"
UserVar Y_S = 900 "延迟/S"
Y_S=Y_S*1000
UserVar Master=DropList{"Master：依旧":1|"Email：19@66ws.cc":2|"具体介绍请看说明↑":3}=3 "注"

Rem S_Start
FindPic FoX,FoY,FoW,FoH,"Attachment:\Timer.bmp",1,intX,intY
If intX > 0 And intY > 0 Then 
    Delay 1000
    KeyPress "=", 1
    Delay Y_S
End If
Goto S_Start
