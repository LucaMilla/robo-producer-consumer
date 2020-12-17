DesenhoErro(){
	try {
		ultraDebug("Default Key [[ DesenhoErro ]]")
		
		iAmLost("[ERRO AO DESENHAR] Erro ao desenhar arquivo de entrada: " vasArquivoEntrada ", forma: " varsForma)

	} catch e {
		iAmBroked("Quebrei no DesenhoErro. Erro Desconhecido", e)
	}
}

DesenhoErro_Sure(){
	ultraDebug("Step [[ DesenhoErro_Sure ]]")
	
	return
}
