; Vide config.ini
PesquisaItem(){
	try {
		ultraDebug("Step [[ PesquisaItem ]]")
		SetDefaultRoute("ExecutaAtividade")
	
		;~ Sleep, 100
		;~ Send, {s}{t}{r}{p}{d}{m}
		;~ Send, {Enter}
		;~ Send, {3}
		;~ Send, {Enter}
		;~ Send, {Q}{C}{P}{P}{S}{R}{C}
		;~ Send, {Enter} 
	
		if ( !InStr(vars_ext_arquivo_entrada, varsPastaProcessamento) ){
			FileMove, % vars_ext_arquivo_entrada, % varsPastaProcessamento
		}
		
		if (vars_ext_arquivo_entrada != "txt"){
			StupidUser("[ANALISE MANUAL] Arquivo com extensão não permitida. Ext: " . OutNameNoExt)
		}
		
		conteudo_arquivo := LerArquivo(varsArquivoEntrada)
		filelog("Arquivo lido: " . SubStr(conteudo_arquivo, 1, 50))
	
		resultado := ValidaArquivo(conteudo_arquivo)
		filelog("Resultado Validação: " . SubStr(resultado, 1, 50))
		if (resultado == "ARQUIVO_CORROMPIDO"){
			iDontKnow("[ANALISE MANUAL] Arquivo corrompido.")
		} else if (resultado == "ARQUIVO SEM AS DUAS INFORMAÇÕES"){
			StupidUser("[ANALISE MANUAL] Arquivo corrompido.")
		} else if (resultado == "FORMA_INEXISTENTE"){
			StupidUser("[ANALISE MANUAL] A forma informada no arquivo não condiz com o esperado: " . resultado)
		} else if (resultado == "COR_INEXISTENTE"){
			StupidUser("[ANALISE MANUAL] A cor informada no arquivo não condiz com o esperado: " . resultado)
		} else if (resultado == "ARQUIVO OK"){
			; do nothing
		} else {
			iDontKnow("[ANALISE MANUAL] Não foi esta mapeado esta saída para a funcao de validação de arquivo: " . resultado)
		}
			
		retorno_array := SeparaString(conteudo_arquivo)
		varsForma := retorno_array[1]
		varsCor := retorno_array[2]
		
	} catch e {
		iAmBroked("Quebrei no PesquisaItem. Erro Desconhecido", e)
	}
}

PesquisaItem_Sure(){
	ultraDebug("Step [[ PesquisaItem_Sure ]]")
	
	return
}

; -------------------------------------------------------
LerArquivo(string, delimitador){
	StringSplit, retorno_array, string, % delimitador
	return retorno_array
}

SeparaString(string, delimitador){
	StringSplit, retorno_array, string, % delimitador
	return retorno_array
}

ValidaArquivo(){
	/*
		"ARQUIVO OK" se tudo ok
		
		
		"ARQUIVO_CORROMPIDO"
		"ARQUIVO SEM AS DUAS INFORMAÇÕES" << Não possuir ;
		"FORMA_INEXISTENTE: <FORMA_QUE_EU_LI>" << 
		"COR_INEXISTENTE" <<
	*/
	
}