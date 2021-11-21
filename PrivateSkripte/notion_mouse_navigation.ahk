#IfWinActive, ahk_class  Chrome_WidgetWin_1 ahk_exe Notion.exe
{
	{XButton1}::Send ^] ; Backwards
	{XButton2}::Send ^[
}