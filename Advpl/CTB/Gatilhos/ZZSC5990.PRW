#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} zzSC5
    Função de gatilho para o campo C5_ZZNMCLI
    @type  Function
    @author Edison Cake
    @since 09/05/2023
    /*/
User Function zzSC5()
    local cNome := ""
    local cLoja := M->C5_LOJACLI

    if (M->C5_TIPO) == "B" .or. (M->C5_TIPO) == "D"
        DbSelectArea("SA2")
        SA2->(DbSetOrder(1))

        if DbSeek(FwxFilial("SA2") + alltrim(M->C5_CLIENTE) + cLoja)
            cNome := SA2->A2_NOME
        endif

    else
        DbSelectArea("SA1")
        SA1->(DbSetOrder(1))

        if DbSeek(FWxFilial("SA1") + alltrim(M->C5_CLIENTE) + cLoja)
            cNome := SA1->A1_NOME
        endif
    endif

Return cNome
