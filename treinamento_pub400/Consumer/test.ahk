FileRead, texto, C:\TreinamentoBPA\EXERCICIO_FIS_SIMULATOR\treinamento_pub400\strings\arq.txt

;~ word_array := StrSplit(texto, A_Space, ".")

palavra_menu_da_tela := word_array[4] 

palavra_tela_desejada := "Menu"

MsgBox, % texto
MsgBox % palavra_menu_da_tela
MsgBox, % palavra_tela_desejada

ValidaTela(palavra_menu_da_tela, palavra_tela_desejada)

ValidaTela(palavra_menu_da_tela, palavra_tela_desejada){
	
	If InStr(palavra_menu_da_tela, palavra_tela_desejada)
	{
		MsgBox tem
	} else {
		MsgBox n tem
	}
}
