RufeAlleTabsAuf()
{
	RufeStandardTabsAuf()
	Sleep, 1500
	RufeZusatzTabsAuf() ;Hier können immer alle Zusatztabs rein, die temporär benötigt werden
}

RufeStandardTabsAuf()
{
	Run, chrome.exe "https://calendar.google.com/calendar/r?tab=wc&pli=1#main_7" " --new-tab"
	Run, chrome.exe "http://1543as0211:8080/tfs/WISCollection/WIS/_dashboards/dashboard/2f8b689d-9ae6-4f46-a208-91aa2988ce0d" " --new-tab"
	Run, chrome.exe "http://1543as0211:8080/tfs/WISCollection/WIS/_queries" " --new-tab"
	Run, chrome.exe "http://1543as0211:8080/tfs/WISCollection/WIS/_queries/query/bc920a92-eb14-4eb7-969a-863be9ed0343/" " --new-tab"
	Run, chrome.exe "http://1543as0211:8080/tfs/WISCollection/_git/WIS/pullrequests?_a=completed" " --new-tab"
	Run, chrome.exe "https://confluence.wgn.wuerth.com/spaces/viewspace.action?key=~wn00121337" " --new-tab"
}

RufeZusatzTabsAuf()
{
	Run, chrome.exe "https://confluence.wgn.wuerth.com/display/~wn00121337/PA+II" " --new-tab"
	Run, chrome.exe "https://trello.com/b/Zb4VRblg/wis" " --new-tab"
}