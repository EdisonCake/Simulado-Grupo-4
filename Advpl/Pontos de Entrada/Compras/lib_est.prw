#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} DescProd
    Fun��o que traz a descri��o do produto e faz a grava��o do mesmo no banco de dados.
    @type  Function
    @author Edison Antonio
    @since 11/05/2023
    /*/
User Function DescProd()
    nItem       := PARAMIXB[1]
    nPos        := PARAMIXB[2]
    cProduto    := PARAMIXB[3]

    aCols[nItem, nPos] := cProduto
Return 
