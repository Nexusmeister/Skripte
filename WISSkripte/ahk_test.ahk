SetTitleMatchMode,2

#NoEnv
EnvGet, vUserProfile, USERPROFILE
MsgBox, % vUserProfile


if(winactive("Microsoft Visual Studio"))
{
	::,,::
	{
		Send, `;`
		return

	}
	
	~RCtrl::
    if (A_PriorHotkey <> "~RCtrl" or A_TimeSincePriorHotkey > 400)
    {
        KeyWait, RCtrl
        return
    }
    sendinput, ^+s
    return
}
