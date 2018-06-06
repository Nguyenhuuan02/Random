#include <GUI.au3>

#Region _function

;hàm làm mới
	Func _Refresh()
			GUICtrlSetData($RandomBox, "")
		EndFunc


;hàm register
	Func _Register()
			Global $RClass_Name = GUICtrlRead($In_ReClass)
			Global $RList = GUICtrlRead($Add_list)
			$path = @ScriptDir &"\Document\"& $RClass_Name &".txt"

				if FileExists($path) then
					MsgBox(0, "Thông báo", "Lớp này đã đăng kí")
				Else
					$File_class = FileOpen($path, 10)
					FileWrite($File_class, $RList)
				EndIf
		EndFunc


;hàm add danh sách lớp
	Func _AddManage()


			;biến
			$RIn_ReClass = GUICtrlRead($In_ReClass)

			$WPath = @ScriptDir & "\Document\Manage.txt"
			$Com = "|" & $RIn_ReClass

			;lệnh thực hiện
			$write = FileWrite($WPath, $Com)

		EndFunc
;hàm hiển thị
Func _Show()

		$NewPath = @ScriptDir & "\Document\Manage.txt"
		$RFile = FileRead($NewPath)
		GUICtrlSetData($Combo_CLass, $RFile)

	EndFunc

;hàm thêm lớp vào combo class
	Func _AddClassToList()

			Global $ReadComboClass = GUICtrlRead($Combo_CLass)
			Global $Address = @ScriptDir & "\Document\"&$ReadComboClass&".txt"

			$ReadList = FileRead($Address)

			GUICtrlSetData($Class_List, $ReadList)

		EndFunc

;hàmm random
	Func _random()

		;lấy phần tử
			$from = GUICtrlRead($In_From)
			$to = GUICtrlRead($In_To)
		;random
			$Random = Random($from, $to, 1)

			Sleep(2000)
				GUICtrlSetData($RandomBox, ".")
			Sleep(2000)
				GUICtrlSetData($RandomBox, "..")
			Sleep(2000)
				GUICtrlSetData($RandomBox, "...")
			Sleep(2000)
				GUICtrlSetData($RandomBox, $Random)

		$RRandomBox = GUICtrlRead($RandomBox)
			$Find = FileReadLine($Address, $RRandomBox)

		MsgBox(0,"Thông Báo", $Find)

	EndFunc

#EndRegion