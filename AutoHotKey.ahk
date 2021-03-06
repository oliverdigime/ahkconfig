; ************************************************************************************
; * MEDIA COMMANDS	
; * FYI http://www.autohotkey.com/docs/commands/Send.htm
; ************************************************************************************
	+^z::Send,{Media_Prev}
	+^x::
		Send,{Media_Play_Pause}
		;Send {Volume_Mute}
	return
	
	+^c::Send,{Media_Next}
	
	+^v::
		If WinActive("ahk_exe Spotify.exe") Then
			WinMinimize
		Else 
			WinActivate, ahk_exe Spotify.exe
		return
	Return
	
	!^v::
		WinActivate, ahk_exe outlook.exe
	Return

	
	!^c::
		WinActivate, ahk_exe onenote.exe
	Return

	!^x::
		WinActivate, ahk_exe webstorm64.exe
	Return
	
; ************************************************************************************
; * ADJUST VOLUME
; ************************************************************************************
	+^q::
		Send {Volume_Up}
	Return
	+^a::
		Send {Volume_Down}
	Return
	+^s::
		SoundSet, +1, , mute 
	Return
	
; ************************************************************************************
; * ACTIVATE SLACK
; ************************************************************************************
	!^b::
		If WinActive("ahk_exe Slack.exe") Then
			WinMinimize
		Else 
			WinActivate, ahk_exe Slack.exe
	return


