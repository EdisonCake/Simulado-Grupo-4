#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function MA103OPC
    Ponto de entrada para criar um bot�o para imprimir um formul�rio de devolu��o
    @type  Function
    @author Stephani Sara Miler
    @since 11/05/2023
    /*/
User Function MA103OPC()

    Local aRet := {}
   
    aAdd(aRet,{'Form. Devolu��o', 'u_FwMsPrinter', 0, 5})


Return aRet
