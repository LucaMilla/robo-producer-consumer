TrataErro(){
	ultraDebug("TrataErro [[ TrataErro ]]")
	stringThrow := _jsonFrameworkData.bpm.data.variables.status_message.value
	
	if ( InStr(stringThrow, "[ANALISE MANUAL]") and vars_arquivo_entrada) {
		if ( vars_ext_arquivo_entrada == "txt" or vars_ext_arquivo_entrada == "csv" ){
			FileAppend, % "`n`nRobô:" . stringThrow, % vars_arquivo_entrada
		}
		FileMove, % vars_arquivo_entrada, % varsPastaAnaliseManual
		;;; Subir para Dashboard também
		SetValueProcess("arquivo_entrada", varsArquivoEntrada)
	}
	
	return
}

TrataErro_Sure(){
	ultraDebug("TrataErro [[ TrataErro_Sure ]]")
	
	return
}