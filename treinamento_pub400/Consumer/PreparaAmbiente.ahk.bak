PreparaAmbiente(){
	;~ ultraDebug("Step [[ PreparaAmbiente ]]")
	
	try {
		
		AbrirApp()
		Sleep, 5000

		;~ Copia a Tela
		MouseClickDrag, L, 12, 65, 1367, 727, 0
		Send ^c
		
		;~ Abre Notepad
		Run C:\Windows\Notepad.exe "C:\TreinamentoBPA\EXERCICIO_FIS_SIMULATOR\treinamento_pub400\strings\arq.txt"
		Sleep, 500
		
		;~ Apaga conteudo que tiver dentro
		Send ^a
		Sleep, 500
		Send, {Delete}

		;~ Cola tela copiada
		Sleep, 500
		Send ^v
		Sleep, 500

		;~ Fecha notepad e salva
		WinClose, ahk_class Notepad
		Send, {Enter}

		FileRead, texto, C:\TreinamentoBPA\EXERCICIO_FIS_SIMULATOR\treinamento_pub400\strings\arq.txt

		ValidaTela(texto, "Welcome")

		username := ["F", "E", "H", "R", "O", "Q", "U", "E"]
		passw := ["s", "e", "n", "h", "a", "1", "2", "3"]
		
		Sleep, 500
		;~ Recebe 2 listas e cada uma recebe cada tecla que precisará ser digitada
		FazLogin(username, passw)
		Sleep, 1000

		;~ Copia a Tela
		MouseClickDrag, L, 12, 65, 1367, 727, 0
		Send ^c
		
		;~ Abre Notepad
		Run C:\Windows\Notepad.exe "C:\TreinamentoBPA\EXERCICIO_FIS_SIMULATOR\treinamento_pub400\strings\arq.txt"
		Sleep, 500
		
		;~ Apaga conteudo que tiver dentro
		Send ^a
		Sleep, 500
		Send, {Delete}

		;~ Cola tela copiada
		Sleep, 500
		Send ^v
		Sleep, 500

		;~ Fecha notepad e salva
		WinClose, ahk_class Notepad
		Send, {Enter}

		FileRead, texto, C:\TreinamentoBPA\EXERCICIO_FIS_SIMULATOR\treinamento_pub400\strings\arq.txt

		ValidaTela(texto, "Main")
		;~ Sleep, 100
		;~ Send, {s}{t}{r}{p}{d}{m}
		;~ Send, {Enter}
		;~ Send, {3}
		;~ Send, {Enter}
		;~ Send, {Q}{C}{P}{P}{S}{R}{C}
		;~ Send, {Enter} 

	} catch e {
		;~ iAmBroked("Quebrei no PreparaAmbiente. Erro Desconhecido", e)
	}
	
	return
}

PreparaAmbiente()

;~ PreparaAmbiente_Sure(){
	;~ ultraDebug("Step [[ PreparaAmbiente_Sure ]]")
	
	;~ return
;~ }

; ---------- FUNCOES USADAS NO PREPARA AMBIENTE --------------

AbrirApp() {
	;~ executa app
	Run, "C:\\BPA\\tn5250j-0.7.6\\tn5250j.jar"

	;~ esperar abrir janela pra clicar
	Sleep, 4000
	;~ clica em connect
	MouseClick, left, 169, 444, R
}


FazLogin(username, passw){
	;~ digita username		
	for key, letra in username
	{
		Send, {%letra%}
	}

	Send, {TAB}

	;~ digita senha
	for key, letra in passw
	{
		Send, {%letra%}
	}
		
	;~ entra
	Send, {ENTER}
}

ValidaTela(texto_da_tela, tela_desejada){

	return
}