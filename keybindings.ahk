#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#NoTrayIcon ; Hides the AutoHotkey icon from the taskbar.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Windows and Q closes active window
#q:: 
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return

; Open Brave
#b::Run, brave 

; Open Windows Terminal
#x::Run, shell:AppsFolder\Microsoft.WindowsTerminal_8wekyb3d8bbwe!App

; Open VSCode
#c::Run, code

; Controlling music
#SC035::Send {Media_Play_Pause}
#.::Send {Media_Next}
#,::Send {Media_Prev}

; Bind Win+Arrows to Win+WSAD
#w::Send #{Up}
#s::Send #{Down}
#a::Send #{Left}
#d::Send #{Right}
