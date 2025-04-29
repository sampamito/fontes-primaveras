#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

#DEFINE CRLF CHR(13)+CHR(10)

/*/{Protheus.doc} M530AGL
O ponto de entrada M530FIL existe na fun��o fa530Processa "Atualiza��o do Pagamento de Comiss�es (MATA530)" 
e ser� disparado para filtrar os vendedores conforme os par�metros dos clientes.

Esta sendo utilizado para filtrar as comiss�es cujos os t�tulos j� tenham sido recebidos (baixados).

@author pablocavalcante
@since 21/06/2016
@version undefined

@type function
/*/

User Function M530FIL()
	Local cRet := IIF(ExistBlock("RUTLE101"),"U_RUTLE101()",".T.")
Return(cRet)
