PreparaAmbiente(){
	ultraDebug("Step [[ PreparaAmbiente ]]")
	
	try {
		
		Loop {
			; Loopar a pasta Processamento
			varsArquivoEntrada := LooparPasta(varsPastaProcessamento,, "return")
			if (!varsArquivoEntrada){
				; Se nao achar nada... loopar a pasta Entrada
				varsArquivoEntrada := LooparPasta(varsPastaEntrada,, "return")
			;~ }
		
			if (varsArquivoEntrada){
				break
			}
		}
		
		SplitPath, varsArquivoEntrada, OutFileName, OutDir, OutExtension, vars_ext_arquivo_entrada, OutDrive
		filelog("Arquivo localizado: " . varsArquivoEntrada)

	} catch e {
		iAmBroked("Quebrei no PreparaAmbiente. Erro Desconhecido", e)
	}
	
	return
}

PreparaAmbiente_Sure(){
	ultraDebug("Step [[ PreparaAmbiente_Sure ]]")
	
	return
}

; ---------- FUNCOES USADAS NO PREPARA AMBIENTE --------------

LooparPasta(pasta, ext:="*", returnOrLoop:="return"){
	Loop 
	{
		Loop, Files, % pasta . "*." . ext, R
		{
			;if (A_LoopFileTimeModified << 2min) nao faz nada ; continue
			
			return A_LoopFileFullPath
		}
		
		if (returnOrLoop == "return"){
			return false
		}
	}
}

CriarPastas(pasta){
	/*
	Cria a `pasta` caso ela não exista no path informado
	*/
}