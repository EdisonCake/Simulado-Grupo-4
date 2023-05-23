#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function MT103IPC
    Ponto de entrada para fazer o preenchimento da descrição do produto no documento de entrada quando o mesmo for gerado a partir de um pedido de compra.
    @type  function
    @author Edison Antonio
    @since 09/05/2023
    /*/
User Function MT103IPC()
    local _nItem := PARAMIXB[1]
    local _cDesc := SC7->C7_DESCRI
    local _nDesc := GDFIELDPOS("D1_ZZDESCR")

    if _nDesc > 0 .and. _nItem > 0
        
        if ExistBlock("DescProd")
            ExecBlock("DescProd", .F., .F., {_nItem, _nDesc, _cDesc})
        endif

    endif

Return 
