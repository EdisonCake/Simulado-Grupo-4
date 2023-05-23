#INCLUDE 'TOTVS.CH'
#INCLUDE 'TBICONN.CH'
#INCLUDE 'TOPCONN.CH'

/*/{Protheus.doc}  User Function Pesq_doc
    Fonte para consultar banco e poreencher os campos da SE2
    @type  Function
    @author Giulliana Yamaguchi
    @since 10/05/2023
    /*/
USER FUNCTION Pesq_doc()

    Local cQuery := ""
    
    cQuery := " SELECT D1.D1_PEDIDO, CR.CR_USERLIB, F1.F1_DTDIGIT, E2_DATALIB, E2_PREFIXO, E2_PARCELA, E2_TIPO, E2_FORNECE, E2_LOJA "   + CRLF
    cQuery += " FROM "+ RetSqlName('SF1') + " AS F1 "  + CRLF
    cQuery += " INNER JOIN "+ RetSqlName('SD1') + " AS D1 ON "  + CRLF
	cQuery += " 	 D1.D1_FILIAL = F1.F1_FILIAL  "  + CRLF
	cQuery += " 	 AND D1.D1_DOC = F1.F1_DOC  "  + CRLF
	cQuery += " 	 AND D1.D1_SERIE = F1.F1_SERIE  "  + CRLF
	cQuery += " 	 AND D1.D1_FORNECE = F1.F1_FORNECE  "  + CRLF
	cQuery += " 	 AND D1.D1_LOJA = F1.F1_LOJA  "  + CRLF
	cQuery += "  INNER JOIN "+ RetSqlName('SCR') + " AS CR ON  "  + CRLF
	cQuery += " 	 CR.CR_FILIAL = D1.D1_FILIAL  "  + CRLF
	cQuery += " 	 AND CR.CR_NUM = D1.D1_PEDIDO  "  + CRLF
	cQuery += " 	 AND CR.CR_TIPO IN ('PC', 'IP') "  + CRLF
	cQuery += " INNER JOIN "+ RetSqlName('SE2') + " AS E2 ON  "  + CRLF
	cQuery += " 	E2_NUM = F1.F1_DOC  "  + CRLF
	cQuery += " 	AND E2_FILIAL = F1.F1_FILIAL "  + CRLF
    cQuery += " WHERE  "  + CRLF
	cQuery += " F1.D_E_L_E_T_ = '' "  + CRLF
	cQuery += " AND D1.D_E_L_E_T_ ='' "  + CRLF
	cQuery += " AND CR.D_E_L_E_T_ = ''  "  + CRLF
    cQuery += " AND E2.D_E_L_E_T_ = '' "  + CRLF
	cQuery += " AND F1.F1_FILIAL ='"+xFilial("SF1")   +"'" + CRLF
	cQuery += " AND F1.F1_SERIE = '"+SF1->F1_SERIE+"' "  + CRLF
	cQuery += " AND F1.F1_FORNECE = '"+SF1->F1_FORNECE+"' "  + CRLF
	cQuery += " AND F1.F1_LOJA = '"+SF1->F1_LOJA+"' "  + CRLF
	cQuery += " AND E2_NUM = '"+SE2->E2_NUM+"' " + CRLF


    TCQUERY cQuery ALIAS "NewF1" new 
    DbSelectArea("SE2")
    //DBSEEK(FwxFilial("SE2")+NewF1->E2_PREFIXO+NewF1->D1_PEDIDO+NewF1->E2_PARCELA+NewF1->E2_TIPO+NewF1->E2_FORNECE+NewF1->E2_LOJA)
    SE2->(DBGOTOP())

    WHILE !SE2->(EOF())
        Reclock("SE2", .F.)
            SE2->E2_STATLIB := '03'
            SE2->E2_DATALIB := STOD( NewF1->F1_DTDIGIT)
            SE2->E2_USUALIB := USRRETNAME( NewF1->CR_USERLIB )
        MsUnLock()
        SE2->(DBSKIP())
    ENDDO
    
    NewF1->(DBCLOSEAREA())
RETURN 
