#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} GetCodPag
    Fun��o que grava o c�digo da forma de pagamento em campos personalizados na tela de t�tulos a pagar.
    @type  Function
    @author Edison Antonio
    @since 11/05/2023
    /*/
User Function GetCodPag()
    local _cFornece := PARAMIXB[1]
    
    DbSelectArea("SA2")
    SA2->(DbSetOrder(1))

    if DbSeek(FWxFilial("SA2") + _cFornece)

        if Empty(SA2->A2_ZZCODPG)
            MsgStop("N�o existe forma de pagamento cadastrada para o fornecedor " + alltrim(SA2->A2_NOME) + ". O registro estar� em branco.", "Aten��o!")
        else
            SE2->E2_ZZCODPG := SA2->A2_ZZCODPG
            SE2->E2_ZZDSCPG := SA2->A2_ZZDSCPG 
        endif            

    endif

Return 

/*/{Protheus.doc} User Function GravaCli
    Fun��o que replica o nome do cliente e faz a grava��o do mesmo no banco de dados.
    @type  Function
    @author Edison Antonio
    @since 11/05/2023
    /*/
User Function GravaCli()
    local cTipo     := PARAMIXB[1]
    local cCliente  := PARAMIXB[2]
    local cLoja     := PARAMIXB[3]
    
    if cTipo == "B" .or. cTipo == "D"
        DbSelectArea("SA2")
        SA2->(DbSetOrder(1))

        if DbSeek(FWxFilial("SA2") + cCliente + cLoja)

            RecLock("SF2", .F.)
                SF2->F2_ZZNMCLI := SA2->A2_NOME
            MsUnlock()
        endif

    else
        DbSelectArea("SA1")
        SA1->(DbSetOrder(1))

        if DbSeek(FWxFilial("SA1") + cCliente + cLoja)

            RecLock("SF2", .F.)
                SF2->F2_ZZNMCLI := SA1->A1_NOME
            MsUnlock()

        endif

    endif

Return 
