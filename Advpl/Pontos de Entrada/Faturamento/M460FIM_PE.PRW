#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} M460FIM
    Ponto de entrada para replicar o nome do cliente e fazer a gravação do nome no banco de dados.
    @type  Function
    @author Edison Antonio
    @since 09/05/2023
    /*/
User Function M460FIM()
    local cTipoCli := SF2->F2_TIPO
    local cCodigo  := SF2->F2_CLIENTE
    local cLojaCli := SF2->F2_LOJACLI

    if ExistBlock("GravaCli")
        ExecBlock("GravaCli", .F., .F., {cTipoCli, cCodigo, cLojaCli})
    endif

Return 
