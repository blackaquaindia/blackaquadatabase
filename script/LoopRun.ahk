#CommentFlag //  ; Close All Apps
Process, Close, msedge.exe
Process, Close, chrome.exe
Process, Close, chrome.exe
Process, Close, chrome.exe
Sleep, 1000

WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Sleep, 1000
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Sleep, 1000
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Sleep, 1000
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Sleep, 1000
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Sleep, 1000
MouseClick, left,  360,  60
Sleep, 5000
MouseClick, left,  975,  105
MouseClick, left,  975,  105
Sleep, 30000
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
MouseClick, left,  925,  105
Sleep, 1000
WinWait, Run Settings, 
IfWinNotActive, Run Settings, , WinActivate, Run Settings, 
WinWaitActive, Run Settings, 
WinWait, Run Settings, 
IfWinNotActive, Run Settings, , WinActivate, Run Settings, 
WinWaitActive, Run Settings, 
MouseClick, left,  350,  450
Sleep, 1000