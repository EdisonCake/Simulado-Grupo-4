#INCLUDE 'TOTVS.CH'
#INCLUDE 'PARMTYPE.CH'

/*/{Protheus.doc} User Function MT100GE2
    Ponto de entrada para a complementação de gravação dos títulos financeiros a pagar, incluindo código e descrição da forma de pagamento personalizada.
    @type  Function
    @author Edison Antonio
    @since 09/05/2023
    @version 1.0
    @see https://tdn.totvs.com/pages/releaseview.action?pageId=6085781
    /*/
User Function MT100GE2()
    local nOpc := PARAMIXB[2]
    local cForn  := SE2->E2_FORNECE

    if nOpc == 1 //? Inclusão
        
        if ExistBlock("GetCodPag")
            ExecBlock('GetCodPag', .F., .F., {cForn})
        endif

    endif

Return 
