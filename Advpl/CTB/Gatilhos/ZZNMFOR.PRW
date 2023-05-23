#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc}  u_zzNMFOR
    Função para o preenchimento automático do campo zzNMFOR na rotina de Documentos de Entrada através de inicializador padrão, e inicializador browse.
    @type  Function
    @author Edison Antonio
    @since 09/05/2023
    /*/
User Function zzNMFOR()
    local cNome := ""

    if SF1->F1_TIPO <> "B" .and. SF1->F1_TIPO <> "D"
        DbSelectArea("SA2")
        SA2->(DbSetOrder(1))

        if DbSeek(FWxFilial("SA2") + alltrim(SF1->F1_FORNECE) + SF1->F1_LOJA)
            cNome := alltrim(SA2->A2_NOME)
        endif

    else
        DbSelectArea("SA1")
        SA1->(DbSetOrder(1))

        if DbSeek(FWxFilial("SA1") + alltrim(SF1->F1_FORNECE) + SF1->F1_LOJA)
            cNome := alltrim(SA1->A1_NOME)
        endif
        
    endif

Return cNome
