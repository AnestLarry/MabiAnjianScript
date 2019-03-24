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
MacroID=3433f3cb-b254-4a18-bfb6-5a147781b4d5
Description=裁缝收尾补丁
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
UEsDBBQAAgAIAIQgOEiMcIEEuAAAAPAIAAAJABEAU3RhcnQuYm1wVVQNAAdSTaRWUk2kVlJNpFbtljEOgzAMRX+3TF3LxtoT9ADsXLgrF+IGxiJqE4xx3CbtxBdGUZCfHDtxGMY5YNWD7c52Y+vZLujW+Sd/n67RXqIWD345zwqB4J63+cLFgJCZn9zRhlApz293G0KOenkg/4mnSX6SI7lQKEGiULF/aCt8tZ9J00f5OYLYKJWTWkHmbveHQqiOFZ2ck1MjwRFbVwz277yl7ONROWlp2zOiclrFIw+jm4PjeOwxtFLW1wu++8v/vwEsUEsDBBQAAgAIAIwgOEgvpb56mgAAAAgGAAAHABEARW5kLmJtcFVUDQAHVk2kVlZNpFZWTaRWc/LlYGMAAzMg1gBiASCWB2JGBgmw+CVWBobDfBAMA/+pgUgyDQg4OP5DEANxiuHm49eCqQCPFjQpBkJakMVxsSkxH82zBBUjh/z///+JCZ//MMUQQDDKkBXDtRCvGI8WXIpxaUEGaO7H7ws09cQkzlH1FKonEuA0E54yYVy0tIqsBqt6BInbfEwuHvOxqCRkPn73kxQ+JBbFAFBLAQIXCxQAAgAIAIQgOEiMcIEEuAAAAPAIAAAJAAkAAAAAAAAAIACAgQAAAABTdGFydC5ibXBVVAUAB1JNpFZQSwECFwsUAAIACACMIDhIL6W+epoAAAAIBgAABwAJAAAAAAAAACAAgIHwAAAARW5kLmJtcFVUBQAHVk2kVlBLBQYAAAAAAgACAH4AAADAAQAAAAA=


[Script]
Delay 700
For 3
FindPic 0,0,1024,768,"Attachment:\Start.bmp",1,intX,intY
If intX > 0 And intY > 0 Then 
Delay 50
MoveTo intX + 11, intY + 24
Delay 50
LeftDown 1

Delay 100

End If
FindPic 0,0,1024,768,"Attachment:\End.bmp",1,intX,intY
If intX > 0 And intY > 0 Then 
Delay 50
MoveTo intX + 8, intY + 24
Delay 50
LeftUp 1

Delay 300

End If
endfor
