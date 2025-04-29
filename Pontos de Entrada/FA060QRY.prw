#include "totvs.ch"

/*/{Protheus.doc} FA060QRY
Inclui condi��o SQL
O ponto de entrada FA060QRY permite a inclus�o de uma condi��o adicional na consulta SQL (Query) de sele��o dos t�tulos a receber, para posterior marca��o em tela.
A condi��o adicionada deve seguir a sintaxe SQL e ir� interferir na sele��o dos t�tulos a receber que ser�o exibidos em tela.
Para maiores informa��es, consulte: FA060Qry Inclui condi��o SQL
@type function
@version 1.0
@author g.sampaio
@since 11/10/2023
@return character, retorna query
/*/
User Function FA060QRY()

	Local cMod          := ""
	Local cRetQuery     := ""
	Local lCemiterio    := SuperGetMV("MV_XCEMI", .F., .F.)
	Local lFuneraria    := SuperGetMV("MV_XFUNE", .F., .F.)
	Local lMVFilBordero := SuperGetMV("MV_XFILBOR", .F., .F.)

	If lMVFilBordero .And. (lCemiterio .Or. lFuneraria)

		// modulo do contrato
		cMod := U_RetModul()

		If cMod == "CEM"
			cRetQuery := " NOT EXISTS ( "
			cRetQuery += "  SELECT U00.U00_CODIGO FROM " + RetSQLName("U00") + " U00 "
			cRetQuery += "  WHERE U00.D_E_L_E_T_ = ' ' "
			cRetQuery += "  AND U00.U00_FILIAL = '" + xFilial("U00") + "' "
			cRetQuery += "  AND U00.U00_CODIGO = SE1.E1_XCONTRA "
			cRetQuery += "  AND U00.U00_STATUS = 'S' "
			cRetQuery += ")"
		ElseIf cMod == "FUN"
			cRetQuery := " NOT EXISTS ( "
			cRetQuery += "  SELECT UF2.UF2_CODIGO FROM " + RetSQLName("UF2") + " UF2 "
			cRetQuery += "  WHERE UF2.D_E_L_E_T_ = ' ' "
			cRetQuery += "  AND UF2.UF2_FILIAL = '" + xFilial("UF2") + "' "
			cRetQuery += "  AND UF2.UF2_CODIGO = SE1.E1_XCTRFUN "
			cRetQuery += "  AND UF2.UF2_STATUS = 'S' "
			cRetQuery += ")"
		EndIf

	Else
		cRetQuery := " E1_NUM <> '' "
	EndIf

Return(cRetQuery)
