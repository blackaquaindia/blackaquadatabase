FileRemoveDir, C:\BlackAquaDatabase1\, 1
FileDelete, C:\Windows\MoveFiles.exe
Sleep, 1000
FileCreateDir, C:\BlackAquaDatabase1
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/comments.zip, C:\BlackAquaDatabase1\comments.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/customers.zip, C:\BlackAquaDatabase1\customers.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/customized.zip, C:\BlackAquaDatabase1\customized.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/task.zip, C:\BlackAquaDatabase1\task.zip
Sleep, 1000



myzip := "C:\BlackAquaDatabase1\customers.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase1\customers"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz(sZip, sUnz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase1\comments.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase1\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz2(2Zip, 2Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase1\customized.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase1\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz3(3Zip, 3Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase1\task.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase1\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz4(4Zip, 4Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}


FileDelete, C:\BlackAquaDatabase1\comments.zip
FileDelete, C:\BlackAquaDatabase1\customers.zip
FileDelete, C:\BlackAquaDatabase1\customized.zip
FileDelete, C:\BlackAquaDatabase1\task.zip
Sleep, 1000



FileEncoding , UTF-8
FileDelete, C:\BlackAquaDatabase1\comments\1.txt
FileDelete, C:\BlackAquaDatabase1\comments\2.txt
FileDelete, C:\BlackAquaDatabase1\comments\3.txt
FileDelete, C:\BlackAquaDatabase1\comments\4.txt
FileDelete, C:\BlackAquaDatabase1\comments\5.txt
FileDelete, C:\BlackAquaDatabase1\comments\6.txt
FileDelete, C:\BlackAquaDatabase1\comments\7.txt
FileDelete, C:\BlackAquaDatabase1\comments\8.txt
FileDelete, C:\BlackAquaDatabase1\comments\9.txt
FileDelete, C:\BlackAquaDatabase1\comments\10.txt
FileDelete, C:\BlackAquaDatabase1\comments\11.txt
FileDelete, C:\BlackAquaDatabase1\comments\12.txt
FileDelete, C:\BlackAquaDatabase1\comments\13.txt
FileDelete, C:\BlackAquaDatabase1\comments\14.txt
FileDelete, C:\BlackAquaDatabase1\comments\15.txt
FileDelete, C:\BlackAquaDatabase1\comments\16.txt
FileDelete, C:\BlackAquaDatabase1\comments\17.txt
FileDelete, C:\BlackAquaDatabase1\comments\18.txt
FileDelete, C:\BlackAquaDatabase1\comments\19.txt
FileDelete, C:\BlackAquaDatabase1\comments\20.txt
FileDelete, C:\BlackAquaDatabase1\comments\21.txt
FileDelete, C:\BlackAquaDatabase1\comments\22.txt
FileDelete, C:\BlackAquaDatabase1\comments\23.txt
FileDelete, C:\BlackAquaDatabase1\comments\24.txt
FileDelete, C:\BlackAquaDatabase1\comments\25.txt
FileDelete, C:\BlackAquaDatabase1\comments\26.txt
FileDelete, C:\BlackAquaDatabase1\comments\27.txt
FileDelete, C:\BlackAquaDatabase1\comments\28.txt
FileDelete, C:\BlackAquaDatabase1\comments\29.txt
FileDelete, C:\BlackAquaDatabase1\comments\30.txt
Sleep, 1000

Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\1.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\2.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\3.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\4.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\5.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\6.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\7.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\8.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\9.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\10.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\11.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\12.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\13.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\14.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\15.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\16.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\17.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\18.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\19.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\20.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\21.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\22.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\23.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\24.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\25.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\26.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\27.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\28.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\29.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase1\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase1\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase1\comments\30.txt ; Save New Comments File
}
Sleep, 1000





Random, rand, 1, 10255
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/script/UpdateDatabase.ahk?%rand%, C:\Windows\UpdateDatabase.ahk
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/script/MoveFiles.ahk?%rand%, C:\Windows\MoveFiles.ahk
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

compile2("C:\Windows\MoveFiles.ahk", "C:\Windows\MoveFiles.exe", "C:\Windows\logo.ico")
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

FileDelete, C:\Windows\UpdateDatabase.ahk
FileDelete, C:\Windows\MoveFiles.ahk
Sleep, 1000

Run, "C:\Windows\MoveFiles.exe"
return