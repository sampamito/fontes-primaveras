#include "totvs.ch"

/*/{Protheus.doc} MTCONHEC
Ponto de entrada para bloquear o bot�o "Banco Conhecimento para alguns usu�rios
@type function
@version 1.0
@author g.sampaio
@since 03/04/2024
@return logical, retorno se o usu�rio tem acesso ou n�o ao bot�o
/*/
User Function MTCONHEC()

	Local lRetorno              := .T.

	If ExistBlock("RTILE81F")
		lRetorno := U_RTILE81F()
	EndIf

Return(lRetorno)
