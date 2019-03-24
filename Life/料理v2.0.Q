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
MacroID=7bfdf335-d18d-426d-93fc-7878c03c6792
Description=料理v2.0
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
此版本与v1.0有较大差距
不支持v1.0的反复制作料理
支持微调设置
如果完全不懂就不用调除分量以外的设置
需自行打开料理窗口并放置好料理
切换风格为 电子产品 不透明


[Attachment]
UEsDBBQAAgAIALZKn0mLyK0hZAAAAIYQAAAMABEAwc/A7bSwv9ouYm1wVVQNAAeneGdYW4F/VluBf1bt1CEOgDAQRNFi0Dg2TSWCoFDg8d1wKs6K4Q5MOgiusMm8dExrf3rUa0jNhs3YjfVYl6zdn9/731QenCoSBItltLtIEEzX3XPOq0gQyNUbM1tEgkCuiJZf7igSBKPlcZEgWOwLUEsBAhcLFAACAAgAtkqfSYvIrSFkAAAAhhAAAAwACQAAAAAAAAAgAICBAAAAAMHPwO20sL/aLmJtcFVUBQAHp3hnWFBLBQYAAAAAAQABAEMAAACfAAAAAAA=


[Script]
//-----------------------------------
//---填入数值
//-----------------------------------
UserVar FoX = 0 "X坐标"
UserVar FoY = 0 "Y坐标"
UserVar FoW = 1024 "W坐标"
UserVar FoH = 768 "H坐标"
UserVar FGX = Droplist{"-------":1}=1 "--------"
UserVar FB_Mod = Droplist{"使用上列数值":1|"上面看不懂 搜全屏吧":2}=2 "分辨率模式"
UserVar Tips = Droplist{"请往下拉":1|"风格：电子产品-不透明":2}=1 "Tips"
UserVar Mode = Droplist{"单材料":1|"双材料":2|"三材料":3}=1 "使用材料格数"
UserVar Met1 = 0 "材料1分量"
UserVar Met2 = 0 "材料2分量"
UserVar Ms = 500 "操作延迟/ms"
UserVar FMs = 50 "操作延迟/ms"
UserVar 偏差值 = -1 "偏差值"


//-----------------------------------
//---处理数据
//-----------------------------------
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

If Met1 >= 1 And Met2 >=0 Then 
    //判定数值正常情况（雾？
Else 
    Call Plugin.Msg.Tips("参数错误，请重新设置")
    EndScript
End If

If Mode = 1 Then 
    Met1 = Int(Met1 * 2.3)
Else
    Met1 = Int(Met1 * 2.3)
    Met2 = Int(Met2 * 2.3)+Met1
End If

From_Opened = 0

//-----------------------------------
//---主体
//-----------------------------------
FindPic SX,SY,SW,SH,"Attachment:\料理窗口.bmp",1,intX,intY

//---主体-Mode-单材料
//-----------------------------------
If Mode = 1 Then 

    MoveTo intX + 37, intY -25
    Delay Ms
    LockMouse
    LeftDown 1
    While 单材料完成=0 
        FindColor SX,SY,SW,SH,"1A97BE",FinX,FinY
        If FinX > SX And FinY > SY Then 
            LeftUp 1
            MoveTo intX + 66, intY + 35
            Delay Ms/2
            LeftClick 1
            单材料完成 = 1
            UnlockMouse

        End If
    wend
End If

//---主体-Mode-双材料
//-----------------------------------
If Mode = 2 Then 
    MoveTo intX + 37, intY -25
    Delay Ms
    LockMouse 
    While 双材料完成1=0
        LeftDown 1
        Delay FMs
        LeftUp 1
        NUM = Plugin.Color.CountColor(SX, SY, SW, SH, "6464c7", 1)
        NUM=偏差值+NUM+1
        If NUM >= Met1 Then 
            双材料完成1=1
            UnlockMouse 
//        ElseIf Met1 > NUM + 69 Then
        ElseIf Met1 > NUM + 36 Then

            LeftDown 1
            Delay FMs*3
            LeftUp 1

        End If
    Wend
    
    MoveTo intX + 117, intY -25
    Delay Ms
    LockMouse
    LeftDown 1
    While 双材料完成2=0 
        FindColor SX,SY,SW,SH,"1A97BE",FinX,FinY
        If FinX > SX And FinY > SY Then 
            LeftUp 1
            MoveTo intX + 66, intY + 35
            Delay Ms/2
            LeftClick 1
            双材料完成2 = 1
            UnlockMouse

        End If
    wend

    
End If


//---主体-Mode-三材料
//-----------------------------------
If Mode = 3 Then 
    MoveTo intX + 37, intY -25
    Delay Ms
    LockMouse 
    While 三材料完成1=0
        LeftDown 1
        Delay FMs
        LeftUp 1
        NUM = Plugin.Color.CountColor(SX, SY, SW, SH, "6464c7", 1)
        NUM=偏差值+NUM+1
        If NUM >= Met1 Then 
            三材料完成1=1
            UnlockMouse 
//        ElseIf Met1 > NUM + 69 Then
        ElseIf Met1 > NUM + 36 Then
            LeftDown 1
            Delay FMs*3
            LeftUp 1

        End If
    Wend

    MoveTo intX + 117, intY -25
    Delay Ms
    LockMouse 
    While 三材料完成2=0
        LeftDown 1
        Delay FMs
        LeftUp 1
        NUM = Plugin.Color.CountColor(SX, SY, SW, SH, "6464c7", 1)
        NUM=偏差值+NUM+1
        If NUM >= Met2 Then 
            三材料完成2=1
            UnlockMouse 
//        ElseIf Met2>NUM+69 Then
ElseIf Met2>NUM+36 Then
            LeftDown 1
            Delay FMs*3
            LeftUp 1

        End If
    Wend

    MoveTo intX + 197, intY -25
    Delay Ms
    LockMouse
    LeftDown 1
    While 三材料完成3=0 
        FindColor SX,SY,SW,SH,"1A97BE",FinX,FinY
        If FinX > SX And FinY > SY Then 
            LeftUp 1
            MoveTo intX + 66, intY + 35
            Delay Ms/2
            LeftClick 1
            三材料完成3 = 1
            UnlockMouse

        End If
    wend
End If
//6464c7
