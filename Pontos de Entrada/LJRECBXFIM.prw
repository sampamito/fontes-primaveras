#include 'protheus.ch'
#include 'parmtype.ch'

#DEFINE CRLF CHR(13)+CHR(10)

/*/{Protheus.doc} LJRECBXFIM
O ponto de entrada LJRECBXFIM � utilizado no final da grava��o dos movimentos banc�rios ap�s o recebimento de t�tulos.

(Comiss�es de Motoqueiros) 
Esta sendo utilizado para gravar o codigo do vendedor vinculado ao usuario logado (caixa) no campo "E1_XVENDCB" dos t�tulos recebidos.

@author Pablo Cavalcante.
@since 19/05/2016
@version undefined.
@param aSE5Bxas, Array que armazena as informa��es da tabela SE5 ao ser gerada.
@type function
/*/

User Function LJRECBXFIM()

	Local aSE5Bxas 		:= ParamIXB[1]

	If ExistBlock("RUTILE99")
		U_RUTILE99(aSE5Bxas)
	EndIf

Return(Nil)
