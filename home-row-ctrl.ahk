#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::Ctrl

Enter::
        SendInput {Ctrl down} ; Press Ctrl.
        KeyWait, Enter ; Give time to press other keys.
        SendInput {Ctrl up} ; Release Ctrl.

        if (a_priorkey != "enter")
        {
                ; If we get here other keys were pressed together with Enter,
                ; so we want Enter to behave as Ctrl, which we accomplish by
                ; returning without sending Enter.
                return
        }
        ; behave as Enter.
        SendInput {Enter}
        return

;^y::
;SendInput ^{v}
;return

;!w::
;SendInput ^{c}

;^p::
;SendInput {up}
;return

;^n::
;SendInput {down}
;return

;^f::
;SendInput {right}
;return

;^b::
;SendInput {left}
;return

;^a::
;       SendInput {Ctrl up}
;       SendInput {home}
;       return

;^e::
;       SendInput {Ctrl up}
;       SendInput {end}
;       return

;^d::
;SendInput {Delete}
