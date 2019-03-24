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
MacroID=5016dc74-c10c-4e17-9e43-e2581d8ad01f
Description=挂魔法组合
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[UIPackage]
UEsDBBQAAgAIALKuIkzrm2GpzQIAAAgeAAAJABEAVUlQYWNrYWdlVVQNAAdl/0taZf9LWmX/S1rtWE1PE0EYfqYt/YBSSvksfqT/QLkbEyE2ISlqaPVgYkyFahrLlmxLxJuJP8Df4E1vcvKi8SeIMfFmoncPPXHSru9sZ+lIQHZmVlfMPs3LQNl3n5l3Zp55duMYYO/95JfnuwtfcQiXEUffySApfcdEuMgDMfF333Ec72snwqnCD4qEmMMUtSMUfM7TFKMUGYoxinGKrLiuH5Xtv8Ea2vTpooSrsKi18RgqmKUV492LnXDtqwvl4oenH1mcfn8ihOUmVnAR+kiDMY8/dgKv18r/W0YNFYMejAr+CbF3VPlrVO8tNHANdWxSq4oCqbA8n37zEqL19vOfjgj/Jspte9Ng+4HnLxrkM5jBND9s9Hq9QO5zh8RvXyNPV3eG+qeuP0zSSn7q1HEPLc0+5BBj3J+khPf0kxOT9O8WmuhQ6PYgT/xZDH2vn5y4xL9GrHVs4DrVoaV49gr9Z0kMvJpf/oTEXyP+HTr3Deafqc6//LywTO6jRWFr9mRaY/2NSOMf8i/RPKzjoTq/62cyCvVPHpr/dcP6c2+eVuBPuet2gNu08mxafw36qbn/lOuflsZfodqrV/3X8efE/fzyZyT+MvFbZvVXHj/fq5cO1h/3n4sG/OyAv3DMNb/zn2Fj/+iauX1crZaqdatTqjbs5v1j8lesre3uUntHl9/L152B0+5fAnj+cPX/rML+GxMawBGG/8gKDeAIwn/Mg58D/sc/jmD9R5Hacwr8OQTrP6aonVPgn0C4/iOPgQZzBOA/XP7zCuOfRKD+wx3PrAJ/QeL/tPf6xbtvbz+/+R6O/ii8sjgSdymeUexSvNTID1t/Tc8/UwThPxeonVFYf1MI139OI1j/eUbsab/8MwjXf3Kt8PznFVKfJh5QH/gpbP2V5685afw3SPU69HnkauCG8vh13n/OS/yr2KYKdKkGFQpL+QzWGX9R4g8COu9/I0Tg+AlQSwECFwsUAAIACACyriJM65thqc0CAAAIHgAACQAJAAAAAAAAAAAAAIAAAAAAVUlQYWNrYWdlVVQFAAdl/0taUEsFBgAAAAABAAEAQAAAAAUDAAAAAA==


[Script]
Call Plugin.Msg.Tips("开始抓点系列。请把鼠标放在分离炉处，右击进行抓点。")
P1 = WaitClick()
GetCursorPos x1, y1
Delay 1000
Call Plugin.Msg.Tips("抓点成功。")
MoveTo x1,y1
LeftClick 1
Delay 100
Call Plugin.Msg.Tips("把鼠标放到要用到的结晶上。按下鼠标中键抓点。")
P2 = WaitClick()
GetCursorPos x2, y2
Delay 1000
Call Plugin.Msg.Tips("抓点成功。请把鼠标放分离炉的格子内，右击进行抓点。")
P3 = WaitClick()
GetCursorPos x3, y3
Delay 1000
Call Plugin.Msg.Tips("抓点成功。请把鼠标放确认键上，右击进行抓点。")
P4 = WaitClick()
GetCursorPos x4, y4
Delay 1000
Call Plugin.Msg.Tips("抓点完毕，开始执行（关闭生产窗口后再按下确认键）")
Delay 2000
For 1000
    //魔法蓄力
    KeyDown "8", 1
    Delay 6000
    KeyUp "8", 1

    Delay 8000
    //↑完成蓄力
    //↓开炉子 
    MoveTo x1, y1
    Delay 500
    LeftClick 1
    Delay 2000
    //↑结束开炉 
    //↓放结晶 
    MoveTo x2, y2
    Delay 900
    LeftClick 1
    MoveTo x3, y3
    Delay 900
    LeftClick 1
    //↑结束放结晶
    //↓按下确认键
    MoveTo x4, y4
    Delay 1000
    LeftClick 1
    //↑完成确认 
    //↓喝药
        Delay 6300
//        KeyPress "J", 1
    //↑喝药
    //↓等待继续
    Delay 1000
ENDFOR
