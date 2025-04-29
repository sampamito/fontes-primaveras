#Include 'Protheus.ch'
#INCLUDE "topconn.ch"
#INCLUDE "TbiConn.ch"

/*/{Protheus.doc} M030DEL
Ponto de entrada para validar a exclus�o do cliente
@type function
@version 1.0
@author Wellington Gon�alves
@since 17/08/2016
@return logical, retorno logico para exclusao
/*/
User Function M030DEL()

	Local lRetorno := .T.

	If ExistBlock("RUTLE100")
		lRetorno := U_RUTLE100()
	EndIf

Return(lRetorno)
