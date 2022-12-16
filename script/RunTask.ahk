#CommentFlag //  ; Maximize FollowersPlus
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Send, {LWINDOWN}{UP}{LWINUP}
Sleep, 5000

#CommentFlag //  ; FollowersPlus Run Task
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
MouseClick, left,  360,  60
Sleep, 30000
MouseClick, left,  175,  275
Sleep, 1000
MouseClick, left,  175,  275
MouseClick, left,  175,  275
Sleep, 1000
Send, {SPACE}
Sleep, 1000

#CommentFlag //  ; Click Accout View
MouseClick, left,  605,  205
Sleep, 1000
#CommentFlag //  ; Click Instagram
MouseClick, left,  750,  250
Sleep, 1000
#CommentFlag //  ; Slide Instant Module
MouseClickDrag, left, 562, 562, 262, 562
Sleep, 1000
#CommentFlag //  ; Slide Message Module
MouseClickDrag, left, 595, 275, 1250, 275
Sleep, 1000
#CommentFlag //  ; Slide Account Module
MouseClickDrag, left, 415, 275, 575, 275
Sleep, 1000
#CommentFlag //  ; Run Task
MouseClick, left,  900,  100
Sleep, 1000

#CommentFlag //  ; FollowersPlus Run Task Settings
WinWait, Run Settings, 
IfWinNotActive, Run Settings, , WinActivate, Run Settings, 
WinWaitActive, Run Settings, 
MouseClick, left,  350,  450
Sleep, 1000

#CommentFlag //  ; Minimize FollowersPlus
WinWait, Followers Plus, ,
IfWinNotActive, Followers Plus, , WinActivate, Followers Plus, ,
WinWaitActive, Followers Plus, ,
Send, {LWINDOWN}m{LWINUP}
Sleep, 1000
