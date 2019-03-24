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
MacroID=c6346d6e-9e77-44c8-a57b-8d1ab710dd8a
Description=魔法回复（莫名）
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
UEsDBBQAAgAIAAwiR0kVnihHnAQAAHYFAAAGABEASEYuYm1wVVQNAAe2IfdXcSD3V3Eg91ddk2lMlFcUhr8BgbCoYEZQFFtTqqKBqI3VLlirNaZRWjWpVUStWsRKXVrrRGURyiKIVFBwZJR2RFZhsCCLLDrCyL4ERFqLmFpU5CuDqBhgWHz6DekP4815/5ybPPece8673ENhJoyd9yXNkTRdkq0kmTBlLL/s//vXj/P0HrK3UhlBhCWqCcTLSJmJ2g6NI1XrOW/CWScOC6kbJ3nuPBz/a9oZhU9VgH2/ahpnJ3F2Mg9P0hJA9SGqoriwUlTYGYFJHmgDKd7JQw1JjsTJiBVQyUm3pPV7ymZzwclwXDiy6fPofRvDVszSn5aRZILSlFhzMl25E0a7mtTPOL+YiBniAXMXuQWXN1Ieyc82JDjSHESTH7kLSLaj9BOa1tKbTt6k3LXmhUVFebE/ZG2f358mkDmRvJkULkW7l5+sKd6P5muUi4icISqsXeS2XA/g6l4OCPgLhJuSakdfNU9zaXTl3kKoGWre8OO2DR1tddnhXlU7LJCYqTLUJiTIiDDlqIB6Lfm+JK4g+h0j820btMGkb6LEn9DxhMg4aUqKBXcVGP6k7xTD+QZDn/7BvUF9e0eSX7/GFK0dxQ7kOZA+nhiBQCuKAqlVcnEVsbNFha2LgxXXDhP9Ftr9RMlIfZdST8p20HiUznj0vjDc11mvb61icIj+dgzlGG7x72kqPyXZmjCB0Kno79KcgWoZvziLChsXuYziIxyXhitwWeCK1NdY5I6nK+FpnXt3xz8jQy8YHR7p0kl8Xii4707Fe2imEmdFiJlxEKeX0JpBaTAF+8TYpS5ygRsBqCy4KlAu0DqPzkP0ZNN7Y3Soy9D/3DDYP9DdYTB0MDICozwLp3M3FWuIsyfYkiNmxLqStRldDJlbUH0kBjgambrjlC3gkT8DN+m/ycsMuoNoW/ii1lP3W7w2egn0vXp2n8F29E70xTHSSYsHKbYozQmfzK1IulopCUC9aqx3ayPzZhgNxyieTaUlOhNKBa4JUtkNIR+oA/e1XU8QdREPI+YZf6D3O3oCafWkTYE+mRZvkicaHVETy4AezXbOLRGPTnCRjyPLi6oTJJqjkZFvzqOD/G41dE7IDfE6Fx74anRUe+bY3w3X+6qCGH1Jy1yeaCiYRrY5f31LTw5ZU6jcRYEnF91RLRJD5xh3PuVLtCEoF1LvTdM2dKuenx+Xusc9OuLU7fqaXlG8EhN6O2b3QI703Ba6U0izRruOPGeuTqFkFg1b6S2hbg+pczlhLx40dZHbqHe51id4Dxbs4EkFNd5kyfK3TvRftzh4+dTmxsY6bW3KoW8GwgVyBPIFukLIdUayZ+FykuRkz+VlBbd30ejLrc0obUSFmcSULP96oLJGKUjL/DzT/Y/qFJWnY6LPx2QJXBJIt+DaHB6ruWDBSYGEaZSu504oTUFUbaFgPnEWokKq0/5NZuQ44yZHCTyIHS787HGYReQaBxIlAzrxooXMFZR9QXOU0chJK9H5cTeLIh+KV1K7jXIP0U+q0/FNZsZqTrmR5Ma9VC4tIsENpRvqD9F8hdhCro8xUx9Cziaq48nzJX8/aasploA70Xo9y/eWIP8BUEsBAhcLFAACAAgADCJHSRWeKEecBAAAdgUAAAYACQAAAAAAAAAgAICBAAAAAEhGLmJtcFVUBQAHtiH3V1BLBQYAAAAAAQABAD0AAADRBAAAAAA=


[Script]
UserVar FoX = 0 "X坐标"
UserVar FoY = 0 "Y坐标"
UserVar FoW = 1024 "W坐标"
UserVar FoH = 768 "H坐标"
UserVar Delay_HF = 3500 "恢复延迟/ms"
UserVar Delay_BL = 4000 "爆裂时间/ms"
UserVar User_Tips = Droplist{"爆裂耗蓝":1|"纯使用":2}=1 "技能模式"
HF = 0
a= BeginThread(Find_HF)
b = BeginThread(Mod_Normal)
If User_Tips = 1 Then 
    Do
        Call Mod_Normal
        Call Find_HF        
    Loop
End If


If User_Tips = 2 Then 
    While User_Tips=2
        Call Find_HF
        If HF = 1 Then 
            KeyPress "0", 1
            Delay Delay_HF
            HF = 0
        End If
    wend
End If

Sub Find_HF
    FindPic FoX,FoY,FoW,FoH,"Attachment:\HF.bmp",1,intX,intY
    If intX > FoX And intY > FoY Then 
        HF = 1
        Delay Delay_BL+100
        KeyPress "0", 1
        Delay Delay_HF
        HF = 0
    Else 
        HF = 0
    End If

End Sub
    
Sub Mod_Normal
    If HF=0
        KeyDown "1", 1
        Delay Delay_BL
        KeyUp "1", 1
    End If
End Sub
