#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Autoit\Random 2.0\Source\Random.kxf
$main = GUICreate("Random", 747, 581, 201, 124)
	;Group random

		$Tab_random = GUICtrlCreateTab(8, 8,  729, 569)
		GUICtrlCreateTabItem("Random")

			$Combo_CLass = GUICtrlCreateCombo("", 16, 64, 249, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))

			$Class_List = GUICtrlCreateEdit("", 16, 88, 369, 369)

			$RandomBox = GUICtrlCreateEdit("", 392, 312, 337, 145, BitOR($GUI_SS_DEFAULT_EDIT,$ES_CENTER))
			GUICtrlSetData(-1, "")
			GUICtrlSetFont(-1, 72, 400, 0, "Big John")
			GUICtrlSetState(-1, $GUI_DISABLE)

			$L_Ketqua = GUICtrlCreateLabel("Kết Quả", 400, 224, 324, 77, $SS_CENTER)
			GUICtrlSetFont(-1, 48, 400, 0, "Times New Roman")

			$L_Class = GUICtrlCreateLabel("Class", 16, 24, 74, 33)
			GUICtrlSetFont(-1, 25, 400, 0, "Times New Roman")

			$Btn_Run = GUICtrlCreateButton("Run", 16, 464, 230, 97)
			$Btn_refresh = GUICtrlCreateButton("Refresh", 256, 464, 230, 97)
			$Btn_Cancel = GUICtrlCreateButton("Cancel", 496, 464, 230, 97)

			;khung random
			$In_From = GUICtrlCreateInput("", 400, 136, 329, 21)
			$In_To = GUICtrlCreateInput("", 400, 192, 329, 21)
			$L_To = GUICtrlCreateLabel("To", 400, 168, 30, 22)
			GUICtrlSetFont(-1, 17, 400, 0, "Times New Roman")
			$LFrom = GUICtrlCreateLabel("From", 400, 112, 55, 22)
			GUICtrlSetFont(-1, 17, 400, 0, "Times New Roman")
			$L_Random = GUICtrlCreateLabel("Random", 480, 64, 178, 39)
			GUICtrlSetFont(-1, 26, 400, 0, "Big John")
			$Btn_Show = GUICtrlCreateButton("Class", 272, 64, 51, 21)
			$Btn_ShowList = GUICtrlCreateButton("Show List", 328, 64, 59, 21)

	;Group register
	$Tab_Register = GUICtrlCreateTab(8, 8,  729, 569)
	GUICtrlCreateTabItem("Register")

		$L_register = GUICtrlCreateLabel("REGISTER", 16, 32, 714, 68, $SS_CENTER)
			GUICtrlSetFont(-1, 48, 400, 0, "Slim Joe")

		$In_ReClass = GUICtrlCreateInput("", 376, 184, 353, 40, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$WS_BORDER), $WS_EX_STATICEDGE)
			GUICtrlSetFont(-1, 24, 400, 0, "Big John")

		$L_Class = GUICtrlCreateLabel("Class", 376, 104, 350, 68, $SS_CENTER)
			GUICtrlSetFont(-1, 48, 400, 0, "Big John")

		$Add_list = GUICtrlCreateEdit("", 16, 104, 353, 465)

		$Btn_Add = GUICtrlCreateButton("Add", 376, 232, 353, 121, BitOR($BS_CENTER,$BS_FLAT))
			GUICtrlSetFont(-1, 72, 400, 2, "Slim Joe")

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
