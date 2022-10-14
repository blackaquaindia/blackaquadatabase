UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/FP.exe, C:\Program Files\BAD\FP\Followers Plus.exe
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/agents/amitpatra/user.inf, C:\Program Files\BAD\FP\user.inf
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/Warning.info, C:\Program Files\BAD\FP\Database\Instagram\Warning.info
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/Theme.style, C:\Program Files\BAD\FP\Theme.style
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/logo.ico, C:\Windows\logo.ico
Sleep, 1000

Run, "C:\BlackAquaDatabase\script\UpdateDatabase.exe"
Sleep, 1000
Run, "C:\Program Files\BAD\FP\Followers Plus.exe"
Sleep, 30000


FileDelete, C:\Users\%A_UserName%\Downloads\Followers-Plus-Install.exe
FileDelete, %userprofile%\Downloads\Followers-Plus-Install.exe
FileDelete, %A_Desktop%\Followers-Plus-Install.exe
Sleep, 1000
FileDelete, C:\Program Files\BAD\FP\Followers Plus.exe
FileDelete, C:\Program Files\BAD\FP\user.inf
FileDelete, C:\Program Files\BAD\FP\Pack\user.inf
