#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} ValPgto
    Rotina de validação de código de forma de pagamento da tabela Z05 na tela de cadastro de fornecedores.
    @type  Function
    @author Edison Antonio
    @since 11/05/2023
    /*/
User Function ValPgto()
    local lRet := .T.
    local cCod := M->A2_ZZCODPG

    if !ExistCPO("Z05", cCod)
        lRet := .F.
    endif

Return lRet
