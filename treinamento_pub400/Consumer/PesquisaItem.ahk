﻿; Vide config.ini
#Include PreparaAmbiente.ahk
PesquisaItem(){
	try {
		;~ ultraDebug("Step [[ PesquisaItem ]]")
		;~ SetDefaultRoute("ExecutaAtividade")
	
		Sleep, 100
		Send, {s}{t}{r}{p}{d}{m}
		Send, {Enter}
		Send, {3}
		Send, {Enter}
		Send, {Q}{C}{P}{P}{S}{R}{C}
		Send, {Enter} 

		
        ;~ NOME : 1-7 caracteres
        ;~ COMANDO : [Adicionar, Modificar, Remover, Copiar]
        ;~ PARAMETRO :
        	;~ Se ADICIONAR: O que irá no campo `data` no `IBM i`.
        	;~ Se MODIFICAR: O que irá no campo `data` no `IBM i`.
            ;~ Se REMOVER: Não precisa.
            ;~ Se COPIAR: Nome da cópia.

		nome := "Lucca"
		comando := ["Adicionar", "Modificar", "Remover","Copiar"]
		parametro := ["data", "data", "", "copia"]
		
		;~ CRIAR
		
		
		;~ if (nome == "NOT FOUND" or comando := "NOT FOUND" or parametro = "NOT FOUND" ) {
	    	;~ iamlost("tchau tarefa")
	    ;~ }

	} catch e {
		;~ iAmBroked("Quebrei no PesquisaItem. Erro Desconhecido", e)
	}
}

PesquisaItem_Sure(){
	;~ ultraDebug("Step [[ PesquisaItem_Sure ]]")
	
	return
}

PesquisaItem()

; -------------------------------------------------------
