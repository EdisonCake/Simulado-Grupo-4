#INCLUDE 'TOTVS.CH'
#INCLUDE 'FWMVCDEF.CH'

/*/{Protheus.doc} CADZ05
    Rotina no padrão MVC tipo 1 para manutenção das formas de pagamento.
    @type  Function
    @author Edison Antonio
    @since 08/05/2023
    @version 1.0
    /*/
User Function CADZ05()
    local cAlias    := 'Z05'
    local cTitle    := "Cadastro de Forma de Pagamento"
    local oBrowse   := FwMBrowse():New()

    oBrowse:SetAlias(cAlias)
    oBrowse:SetDescription(cTitle)

    oBrowse:DisableDetails()
    oBrowse:DisableReport()

    oBrowse:Activate()
Return 

Static Function MenuDef()
    local aBotoes := {}

    ADD OPTION aBotoes TITLE "Visualizar"   ACTION 'VIEWDEF.CADZ05' OPERATION 2 ACCESS 0
    ADD OPTION aBotoes TITLE "Incluir"      ACTION 'VIEWDEF.CADZ05' OPERATION 3 ACCESS 0
    ADD OPTION aBotoes TITLE "Alterar"      ACTION 'VIEWDEF.CADZ05' OPERATION 4 ACCESS 0
    ADD OPTION aBotoes TITLE "Excluir"      ACTION 'VIEWDEF.CADZ05' OPERATION 5 ACCESS 0

Return aBotoes

Static Function ModelDef()
    local oModel    := MpFormModel():New("CADZ05M")
    local oStruZ05  := FwFormStruct(1, "Z05")

    oModel:AddFields("Z05MASTER",, oStruZ05)
    oModel:SetPrimaryKey({"Z05_COD"})

    oStruZ05:SetProperty("Z05_COD", MODEL_FIELD_INIT, FwBuildFeature(STRUCT_FEATURE_INIPAD, 'GetSxENum("Z05", "Z05_COD")'))
    oStruZ05:SetProperty('Z05_COD', MODEL_FIELD_WHEN, FwBuildFeature(STRUCT_FEATURE_WHEN, 'INCLUI'))
    oStruZ05:SetProperty('Z05_COD', MODEL_FIELD_VALID, { |oModel| ExistPgt(oModel)})

Return oModel

Static Function ViewDef()
    local oModel    := FwLoadModel("CADZ05")
    local oStruZ05  := FwFormStruct(2, "Z05")
    local oView     := FwFormView():New()

    oView:SetModel(oModel)
    oView:AddField("VIEW_Z05", oStruZ05, "Z05MASTER")
    oView:CreateHorizontalBox("PAGAMENTO", 50)
    oView:SetOwnerView("VIEW_Z05", "PAGAMENTO")
    oView:EnableTitleView("VIEW_Z05", "Cadastro de Forma de Pagamento")
Return oView

Static Function ExistPgt(oModel)
    local lRet := .T.
    local cCod := M->Z05_COD

    if DbSeek(FwxFilial("Z05") + cCod)
        lRet := .F.

        Help(NIL, NIL, "Atenção!!", NIL, "Já existe registro com essa numeração.", 1, 0, NIL, NIL, NIL, NIL, NIL, {"Verifique o código de entrada, e tente novamente."})

    endif


Return lRet
