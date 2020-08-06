SetTitleMatchMode,2
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
