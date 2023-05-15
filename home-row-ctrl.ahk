; Remap Caps Lock to Ctrl
CapsLock::Ctrl

; Let Enter act both as Enter and Ctrl.
Enter::
{
    Send "{Ctrl down}"

    KeyWait "Enter"
    Send "{Ctrl Up}"

    if (A_PriorKey != "Enter")
    {
        return
    }

    Send "{Enter}"
    return
}
