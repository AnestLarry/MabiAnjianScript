"""
run it in py3ide
getTinlog(Filepath,Month)
then find Tin_log_out.txt on this file path
"""
def getTinlog(fpath,month):
    with open(fpath,"r",encoding="utf-16") as f:
        fline=f.readlines()
        i=0
        tlist=[]
        rlist=[]
        while i <len(fline):
            if ("["+str(month)) in fline[i]:
                tlist+=[fline[i]]
            i+=1
        for i in tlist:
            if "[Friend]" in i or \
               "[TV]" in i or \
               "[Observe]" in i or \
               "[Chat]" in i or \
               "[PM]" in i :
                rlist+=[i]
        i=0
        while i <len(rlist):
                        if "[]" in rlist[i] or \
                           "Friends" in rlist[i]:
                                rlist.pop(i)
                                i-=1
                        i+=1
    return rlist
def output(rlist):
    flielog=open("Tin_log_out.txt","w",10240,"utf-8")
    for i in rlist:
        flielog.write(i)
    flielog.close()