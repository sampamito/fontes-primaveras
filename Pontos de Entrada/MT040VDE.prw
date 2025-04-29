#Include 'Protheus.ch'
#INCLUDE "topconn.ch"
#INCLUDE "TbiConn.ch"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  � MT040VDE �Autor � Wellington Gon�alves � Data � 17/08/2016 ���
�������������������������������������������������������������������������͹��
���Desc.     � Ponto de entrada para validar a exclus�o do vendedor		  ���
�������������������������������������������������������������������������͹��
���Uso       � Cemit�rio e Funer�ria                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/
/*/{Protheus.doc} MT040VDE
Ponto de entrada para validar a exclus�o do vendedor	
@type function
@version 1.0
@author Wellington Gon�alves
@since 17/08/2016
@return logical, retorna se o vendedor pode ser exclu�do ou n�o
/*/
User Function MT040VDE()

	Local aArea			:= GetArea()
	Local aAreaSA3		:= SA3->(GetArea())
	Local lRet			:= .T.

	If ExistBlock("RUTLE102")
		lRet := U_RUTLE102()
	EndIf

	RestArea(aAreaSA3)
	RestArea(aArea)

Return(lRet)
