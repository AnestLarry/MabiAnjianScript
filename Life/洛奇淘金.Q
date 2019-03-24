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
MacroID=aaa1cb37-8ce0-48f3-9592-72883bb81231
Description=淘金
Enable=0
AutoRun=0
[Repeat]
Type=1
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]
按下鼠标中键后自动淘金，淘金技能 7
需相应PACK一同使用。
建议使用位置  瀑布

淘金技能在7，主手为筛子，副手必须为空 需相应PACK一齐使用

如果需要切换筛子，那么请保留筛子在屏幕内可见

已知BUG：会点击“魔法工艺”技能，会点击 宝石粉
以上物品和技能请不要保留在屏幕内

[Attachment]
UEsDBBQAAgAIAP5KWkiAmispCwIAAGIbAAAKABEAbm9ybWFsLmJtcFVUDQAHgxnQVjPiz1Yz4s9W7ZdPToNAGMWRlV2oq7ZYL+DCxLhxS+LecIQmXoAzcASO4BE4gwfDVx79/MIMw5+ZojG8hE8p0ze/eVD4eHv/eIgavWJ7xPaC7RnbVZQ0nz+1x7W2220cx9d+gkMon91uF2Hjzo2H4BDQJ9rv90G8AvqsTP+B6dZDmsnfZ2W6NFNRFGVZftpUNsKAizMdj3lxFmmqqvqyqWpEOPlKnuchmY7AyXOiSDac2MFELB0bTGDly5RlmQB1mPDXfe7UyFICIxZs5zClWUYgMlGFEsbUdc0KB6n688IQfYhlkrVMSZKYTGlKpJaJwhw4Lz5VlkdDEwsk4LEwpY0ypc7qzdqXk7XKImmOuQaY0rOExjObvqrXLFgDTGNWPC8nXYeZBOhC2VirTOpimrpWn5xYRzEtmROqhWmz2cSNcAAV46ZWOEid58Cp4dAycQda+ErqXFWM5sR0ryTnDv8vXDGvYJyYfj0nZsGcWibuyP2J1JN+O/p6mvq70/cnONiZFk5rmEnfEfhsGfO8m5oTn+jm866XSfqCBRLq9AUuJnkSSZeCBoP9kNQxOenxrPTp658GmDp9Zqhs3H3mKCazH4cv2llUtNuOuXmUI/mtMf34BKa+9xZ3KjPeWyYzLfB+58tkeoXyWZlWppVpZWqYDodDEK+APj9Mdx7STP4+f5vJR5rJ3+fEJO8tswWHgD7RN1BLAwQUAAIACAB2TFpIAGslxV8AAACmCAAABwARAHJlZC5ibXBVVA0AB08c0FbY4M9W1+DPVnPyXcbBAAZmQKwBxPpAzA/EjAwSYPECqDwyUFCYJyXVwMOjQG2kyMurzMOjRLwWoEto6R6S0ah7Rt0zTN3TOOqeUfeQ6575g8Y98wetewYDgrhHUVERyBgMCOgSoHsAUEsDBBQAAgAIACYoWkjEW85apQAAAOgFAAAKABEAY2F0ZXllLmJtcFVUDQAHD9zPVg/cz1b7hc1WvVTBDYMwDLw+eKF+eLFApU7AAP13WabqFocFipSQ+OIKCQujxCY+zj74fH8DdlvM3+Yv86f5A/MeXy0/jYcnI3jnlfAOy9e51SdPcVZZtCMo0qzu+TaHbz4J/4154hfBE1tc5EeHECQ/BvEiVUQ/BXsXD2WtCD9PUOzOTw+jy4CB+anvwStKvweIQqKBEdfLXxJ19aKL6pQ2d37X+9nX5z3/T2ADUEsBAhcLFAACAAgA/kpaSICaKykLAgAAYhsAAAoACQAAAAAAAAAgAICBAAAAAG5vcm1hbC5ibXBVVAUAB4MZ0FZQSwECFwsUAAIACAB2TFpIAGslxV8AAACmCAAABwAJAAAAAAAAACAAgIFEAgAAcmVkLmJtcFVUBQAHTxzQVlBLAQIXCxQAAgAIACYoWkjEW85apQAAAOgFAAAKAAkAAAAAAAAAIACAgdkCAABjYXRleWUuYm1wVVQFAAcP3M9WUEsFBgAAAAADAAMAwAAAALcDAAAAAA==


[Script]
FindColorEx 20,20,1024,768,"F087F0",1,0.9,intX,intY
//    FindColorEx 0,0,1280,1024,"FF30FF",1,0.6,intX,intY
If intX > 0 And intY > 0 Then 
    MoveTo intX, intY
    Delay 50
    KeyPress "7", 1
    Delay 1800
    LeftClick 1
    Delay 8000
    MoveTo 512, 384
    Delay 100

    LeftClick 1
    Delay 7400
    KeyDown "Alt", 1
    Delay 1000

    FindPic 350,180,800,580,"Attachment:\cateye.bmp",1,intXW,intYW
    If intXW > 0 And intYW > 0 Then 
        Delay 600

        MoveTo intXW+3, intYW+3
        Delay 300
        LeftClick 1
        Delay 300


    End If
    KeyUp "Alt", 1

    Delay 1700
End If


//判断换武器
FindPic 0,0,1024,768,"Attachment:\red.bmp",1,intXH,intYH
If intXH > 0 And intYH > 0 Then 
    FindPic 0,0,1024,768,"Attachment:\normal.bmp",1,intXH,intYH
    If intXH > 0 And intYH > 0 Then 
        MoveTo intXH + 10, intYH + 10
        Delay 1000
        KeyDown "Ctrl", 1
        Delay 1000
        LeftClick 1
        Delay 1000
        KeyUp "Ctrl", 1

    End If


End If
