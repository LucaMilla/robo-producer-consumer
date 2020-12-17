CriarTarefas(){
	; ; ; ;
	vector := ["PEDRO;CRIAR;ALGO-ALGO", "THIAGO;DELETAR;", "TEST;MODIFICAR;NOVA_DESCRICAO"]
	
	for tarefa in vector
	{
		; "PEDRO;CRIAR;ALGO-ALGO"
		this_array := StrSplit(tarefa, ";")
		NOME_MEMBRO := this_array[1]
		COMANDO := this_array[2]
		PARAMETRO := this_array[3]
		
		; {}
		; InsertVariablesMultiProducer(key, value)
		InsertVariablesMultiProducer("processoNomeMembro", NOME_MEMBRO)
		InsertVariablesMultiProducer("processoComando", COMANDO)
		InsertVariablesMultiProducer("processoParametro", PARAMETRO)
		; {NOME_MEMBRO, COMANDO, PARAMETRO + outras variaveis que sao base do framework}
		StartMultiProducer()
		; Criar a tarefa no diagrama alvo vide config.ini
		; irá esvaziar o "balde" para a proxima iteração
		; {}
	}
	
	SetDefaultRoute("MovePlanilha")
	SetDefaultKey("TarefasSubidas")
	
}

CriarTarefas_Sure(){
	
}