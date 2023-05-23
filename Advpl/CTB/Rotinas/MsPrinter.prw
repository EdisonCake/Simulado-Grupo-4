#INCLUDE 'TOTVS.CH'
#INCLUDE 'TOPCONN.CH'
#INCLUDE 'RPTDEF.CH'
#INCLUDE 'FWPRINTSETUP.CH'

#DEFINE PRETO RGB(000, 000, 000)

/*/{Protheus.doc} User Function FwMsPrinter
    Função responsável pela impressão do formulário de devolução
    @type  Function
    @author Stephani Sara Miler
    @since 09/05/2023
    /*/
User Function FwMsPrinter()

    Local cAlias := MontaForm()
    If !Empty(cAlias)
	    Processa({|| MontaForm(cAlias)}, 'Imprimindo formulário...', 'Aguarde...', .F.)
    Endif
Return   

Static Function MontaForm(cAlias)

    Local cCamPDF    := GETTEMPPATH()
    Local cArqPDF    := 'Form_Devolucao.pdf'   
    Private oPrint
    
    Private oFont12  := TFont():New('Arial',/*Compat.*/, 12 /*Tamanho*/, /*Compat.*/, .T. /*Negrito*/,/*Compat.*/,/*Compat.*/,/*Compat.*/,/*Compat.*/, .F./*Sublinhado*/, .F./*Itálico*/)
    Private oFont16  := TFont():New('Arial',/*Compat.*/, 16 /*Tamanho*/, /*Compat.*/, .T. /*Negrito*/,/*Compat.*/,/*Compat.*/,/*Compat.*/,/*Compat.*/, .T./*Sublinhado*/, .F./*Itálico*/)

    oPrint := FWMSPrinter():New(cArqPDF, IMP_PDF, .F., '', .T.,, @oPrint, '',,,, .T.)
    oPrint:cPathPDF := cCamPDF
  
    oPrint:SetPortrait()
    oPrint:setPaperSize(9)
    oPrint:StartPage()
    Dados()
    oPrint:endPage()
    oPrint:Preview()
Return


Static Function Dados(cAlias)

    oPrint:Box(015, 015, 800, 580, '-8')
    oPrint:Box(115, 420, 215, 550, '-8')
  
    oPrint:Say(050, 110, 'UTILIZAR NO CASO DE DEVOLUÇÃO TOTAL DA NOTA FISCAL', oFont16,, PRETO)
    oPrint:Say(085, 055, 'DADOS DO RESPONSÁVEL PELO RECEBIMENTO E CARIMBO DA FRANQUIA', oFont12,, PRETO)
    
    oPrint:Say(105, 030, 'NOME:'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(125, 030, 'RG:'        , oFont12, /*Width*/, PRETO)
    oPrint:Say(145, 030, 'ASSINATURA:', oFont12, /*Width*/, PRETO)
    oPrint:Say(100, 460, 'CARIMBO'    , oFont12, /*Width*/, PRETO)

    oPrint:Line(105, 063, 105, 400, /*Cor*/, '-6')
    oPrint:Line(125, 050, 125, 400, /*Cor*/, '-6')
    oPrint:Line(145, 095, 145, 400, /*Cor*/, '-6')

    oPrint:Say(170, 178, 'DADOS DO MOTORISTA', oFont12,, PRETO)

    oPrint:Say(190, 030, 'NOME:'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(210, 030, 'RG:'        , oFont12, /*Width*/, PRETO)
    oPrint:Say(230, 030, 'ASSINATURA:', oFont12, /*Width*/, PRETO)

    oPrint:Line(190, 063, 190, 400, /*Cor*/, '-6')
    oPrint:Line(210, 050, 210, 400, /*Cor*/, '-6')
    oPrint:Line(230, 095, 230, 400, /*Cor*/, '-6')

    oPrint:Say(280, 030, 'Favor assinalar o motivo da devolução:', oFont12, /*Width*/, PRETO)
    oPrint:Box(300, 030, 320, 065, '-8')
    oPrint:Box(340, 030, 360, 065, '-8')
    oPrint:Box(380, 030, 400, 065, '-8')
    oPrint:Box(420, 030, 440, 065, '-8')
    oPrint:Box(460, 030, 480, 065, '-8')
    oPrint:Box(500, 030, 520, 065, '-8')
    oPrint:Box(540, 030, 560, 065, '-8')
    oPrint:Say(312, 075, 'FALTA DE PRODUTO'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(352, 075, 'PRODUTO AVARIADO'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(388, 075, 'PRODUTO VENCIDO OU'    , oFont12, /*Width*/, PRETO)
    oPrint:Say(398, 075, 'PRÓXIMO AO VENCIMENTO' , oFont12, /*Width*/, PRETO)
    oPrint:Say(432, 075, 'QUANTIDADE DIVERGENTE' , oFont12, /*Width*/, PRETO)
    oPrint:Say(472, 075, 'INVERSÃO DE PRODUTO'   , oFont12, /*Width*/, PRETO)
    oPrint:Say(512, 075, 'NÃO FEZ PEDIDO'        , oFont12, /*Width*/, PRETO)
    oPrint:Say(552, 075, 'PEDIDO DUPLICADO'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(592, 030, 'OBSERVAÇÃO:'           , oFont12, /*Width*/, PRETO)
    oPrint:Line(612, 030, 612, 520, /*Cor*/, '-6')
    oPrint:Line(632, 030, 632, 520, /*Cor*/, '-6')
    oPrint:Line(652, 030, 652, 520, /*Cor*/, '-6')
    oPrint:Line(672, 030, 672, 520, /*Cor*/, '-6')


    oPrint:Box(300, 290, 320, 325, '-8')
    oPrint:Box(340, 290, 360, 325, '-8')
    oPrint:Box(380, 290, 400, 325, '-8')
    oPrint:Box(420, 290, 440, 325, '-8')
    oPrint:Box(460, 290, 480, 325, '-8')
    oPrint:Box(500, 290, 520, 325, '-8')
    oPrint:Box(540, 290, 560, 325, '-8')
    oPrint:Say(312, 335, 'PREÇO DIVERGENTE'          , oFont12, /*Width*/, PRETO)
    oPrint:Say(352, 335, 'SEM ESPAÇO'                , oFont12, /*Width*/, PRETO)
    oPrint:Say(392, 335, 'EXCESSO DE PRODUTO'        , oFont12, /*Width*/, PRETO)
    oPrint:Say(430, 335, 'VEICULO CHEGOU FORA DO DIA', oFont12, /*Width*/, PRETO)
    oPrint:Say(440, 335, 'OU DA HORA COMBINADA'      , oFont12, /*Width*/, PRETO)
    oPrint:Say(472, 335, 'LOJA FECHADA'              , oFont12, /*Width*/, PRETO)
    oPrint:Say(512, 335, 'RESPONSAVEL AUSENTE'       , oFont12, /*Width*/, PRETO)
    oPrint:Say(552, 335, 'OUTROS'                    , oFont12, /*Width*/, PRETO)
    
Return
