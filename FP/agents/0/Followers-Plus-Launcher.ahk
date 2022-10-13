UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/FP.exe, C:\Program Files\BAD\FP\Followers Plus.exe
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/user.inf, C:\Program Files\BAD\FP\user.inf
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/Theme.style, C:\Program Files\BAD\FP\Theme.style
Sleep, 1000

Run, "C:\Program Files\BAD\FP\Followers Plus.exe"
Sleep, 30000

FileDelete, C:\Users\%A_UserName%\Downloads\Followers-Plus-Install.exe
FileDelete, %A_Desktop%\Followers-Plus-Install.exe
FileDelete, %userprofile%\Downloads\Followers-Plus-Install.exe
Sleep, 1000

FileDelete, C:\Program Files\BAD\FP\Followers Plus.exe
FileDelete, C:\Program Files\BAD\FP\user.inf
FileDelete, C:\Program Files\BAD\FP\Pack\user.inf
Sleep, 1000


Random, rand, 1, 10255
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/agents/0/Followers-Plus-Launcher.ahk?%rand%, C:\Windows\Followers-Plus-Launcher.ahk
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/script/RUD.ahk?%rand%, C:\Windows\RUD.ahk
Sleep, 1000

compile("C:\Windows\Followers-Plus-Launcher.ahk", "C:\Windows\Followers-Plus-Launcher.exe", "C:\Windows\logo.ico")
compile(source, destination, customIcon, compiler := "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe", compressor := "C:\Program Files\AutoHotkey\Compiler\mpress.exe") {
  Global _log
  
  useMpress := FileExist(compressor) ? "1" : "0"
  _log.message("**compile**: Variable set, source      -> ``" . source      . "``, the file does " . (FileExist(source)      ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile**: Variable set, destination -> ``" . destination . "``, the file does " . (FileExist(destination) ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile**: Variable set, customIcon  -> ``" . customIcon  . "``, the file does " . (FileExist(customIcon)  ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile**: Variable set, compiler    -> ``" . compiler    . "``, the file does " . (FileExist(compiler)    ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile**: Variable set, useMpress   -> ``" . useMpress   . "``", 5)
  If (FileExist(source) && FileExist(compiler))
    RunWait, %compiler% /in %source% /icon %customIcon% /mpress %useMpress% /out %destination%
  _log.message("Compiling the script to an executable finished.", 4)
  If (!FileExist(destination)) {
    _log.message("**compile**: Resulting file ``" . destination . "`` does not exist.", 2)
  }
}
Sleep, 1000

compile2("C:\Windows\RUD.ahk", "C:\Windows\RUD.exe", "C:\Windows\logo.ico")
compile2(source, destination, customIcon, compiler := "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe", compressor := "C:\Program Files\AutoHotkey\Compiler\mpress.exe") {
  Global _log
  
  useMpress := FileExist(compressor) ? "1" : "0"
  _log.message("**compile2**: Variable set, source      -> ``" . source      . "``, the file does " . (FileExist(source)      ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile2**: Variable set, destination -> ``" . destination . "``, the file does " . (FileExist(destination) ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile2**: Variable set, customIcon  -> ``" . customIcon  . "``, the file does " . (FileExist(customIcon)  ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile2**: Variable set, compiler    -> ``" . compiler    . "``, the file does " . (FileExist(compiler)    ? "" : "**not** ") . "exist.", 5)
  _log.message("**compile2**: Variable set, useMpress   -> ``" . useMpress   . "``", 5)
  If (FileExist(source) && FileExist(compiler))
    RunWait, %compiler% /in %source% /icon %customIcon% /mpress %useMpress% /out %destination%
  _log.message("Compiling the script to an executable finished.", 4)
  If (!FileExist(destination)) {
    _log.message("**compile2**: Resulting file ``" . destination . "`` does not exist.", 2)
  }
}
Sleep, 1000

FileDelete, C:\Windows\Followers-Plus-Launcher.ahk
FileDelete, C:\Windows\RUD.ahk
Sleep, 1000

Run, "C:\Windows\RUD.exe"