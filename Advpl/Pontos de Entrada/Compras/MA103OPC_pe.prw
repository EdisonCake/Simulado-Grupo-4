#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} User Function MA103OPC
    Ponto de entrada para criar um botão para imprimir um formulário de devolução
    @type  Function
    @author Stephani Sara Miler
    @since 11/05/2023
    /*/
User Function MA103OPC()

    Local aRet := {}
   
    aAdd(aRet,{'Form. Devolução', 'u_FwMsPrinter', 0, 5})


Return aRet
