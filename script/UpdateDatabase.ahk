FileRemoveDir, C:\BlackAquaDatabase\, 1
FileCreateDir, C:\BlackAquaDatabase
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/comments.zip, C:\BlackAquaDatabase\comments.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/customers.zip, C:\BlackAquaDatabase\customers.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/customized.zip, C:\BlackAquaDatabase\customized.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/task.zip, C:\BlackAquaDatabase\task.zip
Sleep, 1000
UrlDownloadToFile, https://raw.githubusercontent.com/blackaquaindia/blackaquadatabase/main/useragent.zip, C:\BlackAquaDatabase\useragent.zip
Sleep, 1000



myzip := "C:\BlackAquaDatabase\customers.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase\customers"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz(sZip, sUnz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase\comments.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz2(2Zip, 2Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase\customized.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz3(3Zip, 3Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase\task.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz4(4Zip, 4Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



myzip := "C:\BlackAquaDatabase\useragent.zip"				; change to your needs
unzipfolder := "C:\BlackAquaDatabase\"				; change to your needs
Unz(myzip, unzipfolder)

Loop, Files, %unzipfolder%\*.exe, F
   run, %A_LoopFileName%

Unz5(5Zip, 5Unz)									; sZip = the fullpath of the zip file, sUnz the folder to contain the extracted files
	{
	FileCreateDir, %sUnz%
    psh  := ComObjCreate("Shell.Application")
    psh.Namespace( sUnz ).CopyHere( psh.Namespace( sZip ).items, 4|16 )
	}



FileDelete, C:\BlackAquaDatabase\comments.zip
FileDelete, C:\BlackAquaDatabase\customers.zip
FileDelete, C:\BlackAquaDatabase\customized.zip
FileDelete, C:\BlackAquaDatabase\task.zip
FileDelete, C:\BlackAquaDatabase\useragent.zip
Sleep, 1000



FileEncoding , UTF-8
FileDelete, C:\BlackAquaDatabase\comments\1.txt
FileDelete, C:\BlackAquaDatabase\comments\2.txt
FileDelete, C:\BlackAquaDatabase\comments\3.txt
FileDelete, C:\BlackAquaDatabase\comments\4.txt
FileDelete, C:\BlackAquaDatabase\comments\5.txt
FileDelete, C:\BlackAquaDatabase\comments\6.txt
FileDelete, C:\BlackAquaDatabase\comments\7.txt
FileDelete, C:\BlackAquaDatabase\comments\8.txt
FileDelete, C:\BlackAquaDatabase\comments\9.txt
FileDelete, C:\BlackAquaDatabase\comments\10.txt
FileDelete, C:\BlackAquaDatabase\comments\11.txt
FileDelete, C:\BlackAquaDatabase\comments\12.txt
FileDelete, C:\BlackAquaDatabase\comments\13.txt
FileDelete, C:\BlackAquaDatabase\comments\14.txt
FileDelete, C:\BlackAquaDatabase\comments\15.txt
FileDelete, C:\BlackAquaDatabase\comments\16.txt
FileDelete, C:\BlackAquaDatabase\comments\17.txt
FileDelete, C:\BlackAquaDatabase\comments\18.txt
FileDelete, C:\BlackAquaDatabase\comments\19.txt
FileDelete, C:\BlackAquaDatabase\comments\20.txt
FileDelete, C:\BlackAquaDatabase\comments\21.txt
FileDelete, C:\BlackAquaDatabase\comments\22.txt
FileDelete, C:\BlackAquaDatabase\comments\23.txt
FileDelete, C:\BlackAquaDatabase\comments\24.txt
FileDelete, C:\BlackAquaDatabase\comments\25.txt
FileDelete, C:\BlackAquaDatabase\comments\26.txt
FileDelete, C:\BlackAquaDatabase\comments\27.txt
FileDelete, C:\BlackAquaDatabase\comments\28.txt
FileDelete, C:\BlackAquaDatabase\comments\29.txt
FileDelete, C:\BlackAquaDatabase\comments\30.txt
Sleep, 1000

Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\1.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\2.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\3.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\4.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\5.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\6.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\7.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\8.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\9.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\10.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\11.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\12.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\13.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\14.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\15.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\16.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\17.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\18.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\19.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\20.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\21.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\22.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\23.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\24.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\25.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\26.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\27.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\28.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\29.txt ; Save New Comments File
}
Sleep, 1000


Loop, 30
{
FileRead, ReadVar, C:\BlackAquaDatabase\comments\0.txt ; Read the file
Sort, ReadVar, Random ; Sort Customers Randomly
RegExMatch(ReadVar, "m)^(.*)$", Customers) ; Store first line to variable
IfEqual, Customers,, return ; Do nothing if first line is empty string (blank)
Clipboard := Customers ; Store first line to clipboard

FileRead, ReadComments, C:\BlackAquaDatabase\comments\%Customers%.txt ; Read the file
Sort, ReadComments, Random
RegExMatch(ReadComments, "m)^(.*)$", Comments) ; Store first line to variable
IfEqual, Comments,, return ; Do nothing if first line is empty string (blank)
Clipboard := Comments ; Store first line to clipboard

FileAppend, %Customers%`r%Comments%`r, C:\BlackAquaDatabase\comments\30.txt ; Save New Comments File
}
Sleep, 1000
return
