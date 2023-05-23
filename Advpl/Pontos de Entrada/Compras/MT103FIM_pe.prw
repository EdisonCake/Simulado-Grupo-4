#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc}  User Function MT103FIM
    Fun��o respons�vel pela impress�o do formul�rio de devolu��o
    Fonte para consultar banco e poreencher os campos da SE2
    @type  Function
    @author Giulliana Yamaguchi e Stephani Sara Miler
    @since 09/05/2023
    /*/
User Function MT103FIM() 
    Local nOpcao := PARAMIXB[1]   
    Local nConfirma := PARAMIXB[2]  
 
    If (INCLUI .OR. ALTERA) .AND. nOpcao == 3 .AND. nConfirma == 1
        If MSGYESNO( 'Deseja imprimir o formul�rio de devolu��o?', 'Formul�rio Devolu��o' )
            if ExistBlock('FwMsPrinter')
                ExecBlock('FwMsPrinter', .F., .F.)
            endif
        endif
    Endif

    If nOpcao == 4 .Or. nOpcao == 3 .And. nConfirma == 1 .And. sf4->f4_duplic == 'S'
        If ExistBlock("Pesq_doc")
            ExecBlock("Pesq_doc", .F., .F.)
        ENDIF
    ENDIF
    
Return nil
