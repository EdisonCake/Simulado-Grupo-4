#INCLUDE 'TOTVS.CH'

/*/{Protheus.doc} DescProd
    Função que traz a descrição do produto e faz a gravação do mesmo no banco de dados.
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
