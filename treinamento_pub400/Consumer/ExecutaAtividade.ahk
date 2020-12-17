ExecutaAtividade(){
	ultraDebug("Step [[ ExecutaAtividade ]]")
	
	try {
		; Fechar qualquer instancia aberta do Paint, para evitar conflitos
		; IDEAL, MOVER PARA UMA FUNCAO
		timer := A_TickCount
		timeOutLimitSecs := 20
		Loop {
			if ( (A_TickCount - timer)/1000 > timeOutLimitSecs ){
				iAmLost("[TIMEOUT] Não foi possível fechar o paint. Timeout " . timeOutLimitSecs . " s")
			}
			Process, Close, mspaint.exe
			if ( !WinExist("ahk_exe mspaint.exe") ){
				break
			}
		}
		
		AbrirPaint()
		
		DesenharFormaPaint(varsForma, varsCor)
		; Teste Integrado
		resultado := VerificaSeDesenho()
		if (resultado == "DESENHO ENCONTRADO"){
			; do nothing
		} else {
			SetDefaultKey("Desenho Erro")
		}
		
		nomeDestino := varsPastaSaida . varsForma "_" . varsCor . ".png"
		SalvarArquivoPaint(nomeDestino)

		SetDefaultKey("DesenhoFeito")
	} catch e {
		iAmBroked("Quebrei no ExecutaAtividade. Erro Desconhecido", e)
	}
	
	return
}

ExecutaAtividade_Sure(){
	ultraDebug("Step [[ ExecutaAtividade_Sure ]]")
	
	return
}

; ---------- FUNCOES USADAS NO PREPARA AMBIENTE --------------

AbrirPaint(){
	/*
	
	*/
}

DesenharFormaPaint(forma, cor){
	/*
	
	*/
}

SalvarArquivoPaint(arquivo, ext:="png"){
	/*
	
	*/
}