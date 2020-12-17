PesquisaItem(){
	; Consumer
	; Aqui eu já possui acesso a uma ProcessInstance do BPM
	; Logo, consigo dar GET nas variaveis
	
	processoNomeMembro := GetVariableValueProcess("processoNomeMembro")
	processoComando := GetVariableValueProcess("processoComando")
	processoParametro := GetVariableValueProcess("processoParametro")
	
	; realizo trabalho com elas
	SetDefaultRoute("ConsultaItem")
}

PesquisaItem_Sure(){
	
}