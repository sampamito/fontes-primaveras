#include 'protheus.ch'

/*/{Protheus.doc} MT410TOK
Executado ao clicar no bot�o OK e pode ser usado 
para validar a confirma��o das opera��es: 
incluir,  alterar, copiar e excluir.
@author TOTVS
@since 28/10/2016
@version P12
@param Nao recebe parametros
@return nulo
/*/

User Function MT410TOK()

	Local lRet			:= .T.

	If ExistBlock("RUTLE105")
		lRet := U_RUTLE105()
	EndIf

Return(lRet)
