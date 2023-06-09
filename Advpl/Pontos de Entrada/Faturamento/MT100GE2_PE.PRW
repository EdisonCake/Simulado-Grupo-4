#INCLUDE 'TOTVS.CH'
#INCLUDE 'PARMTYPE.CH'

/*/{Protheus.doc} User Function MT100GE2
    Ponto de entrada para a complementa��o de grava��o dos t�tulos financeiros a pagar, incluindo c�digo e descri��o da forma de pagamento personalizada.
    @type  Function
    @author Edison Antonio
    @since 09/05/2023
    @version 1.0
    @see https://tdn.totvs.com/pages/releaseview.action?pageId=6085781
    /*/
User Function MT100GE2()
    local nOpc := PARAMIXB[2]
    local cForn  := SE2->E2_FORNECE

    if nOpc == 1 //? Inclus�o
        
        if ExistBlock("GetCodPag")
            ExecBlock('GetCodPag', .F., .F., {cForn})
        endif

    endif

Return 
