#include <FunctionRandom.au3>

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE, $Btn_Cancel
			Exit
		Case $Btn_refresh
			GUICtrlSetData($RandomBox, "")
		Case $Btn_Run
			_random()
		Case $Btn_Add
			_Register()
			_AddManage()
		Case $Btn_Show
			_Show()
		Case $Btn_ShowList
			_AddClassToList()
	EndSwitch
WEnd
