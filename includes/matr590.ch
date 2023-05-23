#ifdef SPANISH
	#define STR0001 "Facturacion por cliente"
	#define STR0002 "Este informe mostrara la relacion de la facturacion. Podra ser"
	#define STR0003 "emitido por orden de cliente o por valor (Ranking).     "
	#define STR0004 "No sera computado, si en TES el campo Genera Titulo este (N). "
	#define STR0005 "A Rayas"
	#define STR0006 "Administracion"
	#define STR0007 "FACTURACION POR CLIENTE  (CODIGO) - "
	#define STR0008 "FACTURACION POR CLIENTE  (RANKING) - "
	#define STR0009 "FACTURACION POR CLIENTE  (PROVINCIA) - "
	#define STR0010 "CODIGO/TIENDA             RAZON SOCIAL                                   VALOR             VALOR DE LA             VALOR RANKING"
	#define STR0011 "                                                                         S/IMPUESTOS        MERCADERIA              TOTAL        "
	#define STR0012 "Seleccionando Registros..."
	#define STR0013 "ANULADO POR EL OPERADOR"
	#define STR0014 "Total de la Provincia :"
	#define STR0015 "Provincia: "
	#define STR0016 "T O T A L --->"
	#define STR0017 "Facturacion por Cliente"
	#define STR0018 "Este informe emitira la lista de facturacion. Se podra"
	#define STR0019 "emitir por orden de Cliente o por Valor (Ranking).     "
	#define STR0020 "Si en el TES esta genera titulo (N), no se computara. "
	#define STR0021 "Valor s/impuestos"
	#define STR0022 "Valor de Mercaderia"
	#define STR0023 "Valor Total"
	#define STR0024 "Ranking"
	#define STR0025 "T O T A L --->"
	#define STR0026 "(Codigo)"
	#define STR0027 "(Ranking)"
	#define STR0028 "(Prov.)"
	#define STR0029 "Prov.:"
	#define STR0030 "Total Est/Reg/Prov."
	#define STR0031 "Clientes"
	#define STR0032 "Seccion Totaliz. de Facturacion"
	#define STR0033 "Seccion Totaliz. de Devoluciones"
	#define STR0034 "Seccion Totaliz. Fact - Dev"
	#define STR0035 "Total del Cliente"
#else
	#ifdef ENGLISH
		#define STR0001 "Billing by Customer"
		#define STR0002 "This report will print the billing list. It can be"
		#define STR0003 "ordered by Customer or Value (Ranking). It is not"
		#define STR0004 "considered if 'Generate Trade Note'='(N)' (in TIO)"
		#define STR0005 "Z.Form"
		#define STR0006 "Management"
		#define STR0007 "BILLING BY CUSTOMER  (CODE) -       "
		#define STR0008 "BILLING BY CUSTOMER  (RANKING) -     "
		#define STR0009 "BILLING BY CUSTOMER  (STATE) -      "
		#define STR0010 "CODE/UNIT                 CORPORATE NAME                                 VALUE             VALUE OF                RANKING VALUE"
		#define STR0011 "                                                                         W/o TAXES           GOODS                 TOTAL        "
		#define STR0012 "Selecting Records..."
		#define STR0013 "CANCELLED BY THE OPERATOR"
		#define STR0014 "Total of State :"
		#define STR0015 "State: "
		#define STR0016 "T O T A L --->"
		#define STR0017 "Billing by customer    "
		#define STR0018 "This report list billing. It can be                      "
		#define STR0019 "issued by Customer or Amount (Ranking) order.            "
		#define STR0020 "If in TIO is generate trade note (N),will not be computed."
		#define STR0021 "Amnt. w/o taxes  "
		#define STR0022 "Merchandise Value  "
		#define STR0023 "TotalAmount"
		#define STR0024 "Ranking"
		#define STR0025 "T O T A L --->"
		#define STR0026 "(Code)  "
		#define STR0027 "(Ranking)"
		#define STR0028 "(State) "
		#define STR0029 "State:  "
		#define STR0030 "Total for State of "
		#define STR0031 "Customers"
		#define STR0032 "Billing totalling section        "
		#define STR0033 "Returns totalling section        "
		#define STR0034 "Bill.-Return totalling sect."
		#define STR0035 "Customer total  "
	#else
		Static STR0001 := "Faturamento por Cliente"
		Static STR0002 := "Este relatorio emite a relacao de faturamento. Podera ser"
		Static STR0003 := "emitido por ordem de Cliente ou por Valor (Ranking).     "
		Static STR0004 := "Se no TES estiver gera duplicata (N), nao sera computado."
		Static STR0005 := "Zebrado"
		Static STR0006 := "Administracao"
		Static STR0007 := "FATURAMENTO POR CLIENTE  (CODIGO) - "
		Static STR0008 := "FATURAMENTO POR CLIENTE  (RANKING) - "
		Static STR0009 := "FATURAMENTO POR CLIENTE  (ESTADO) - "
		Static STR0010 := "CODIGO/LOJA               RAZAO SOCIAL                                   VALOR             VALOR DA                VALOR RANKING"
		Static STR0011 := "                                                                         S/IMPOSTOS        MERCADORIA              TOTAL        "
		Static STR0012 := "Selecionando Registros..."
		Static STR0013 := "CANCELADO PELO OPERADOR"
		Static STR0014 := "Total do Estado de "
		Static STR0015 := "Estado: "
		Static STR0016 := "T O T A L --->"
		Static STR0017 := "Faturamento por Cliente"
		Static STR0018 := "Este relatorio emite a relacao de faturamento. Podera ser"
		Static STR0019 := "emitido por ordem de Cliente ou por Valor (Ranking).     "
		Static STR0020 := "Se no TES estiver gera duplicata (N), nao sera computado."
		#define STR0021  "Valor S/ Impostos"
		Static STR0022 := "Valor da Mercadoria"
		#define STR0023  "Valor Total"
		#define STR0024  "Ranking"
		Static STR0025 := "T O T A L --->"
		Static STR0026 := "(Codigo)"
		Static STR0027 := "(Ranking)"
		Static STR0028 := "(Estado)"
		#define STR0029  "Estado: "
		Static STR0030 := "Total do Estado de "
		#define STR0031  "Clientes"
		Static STR0032 := "Secao Totalizadora do Faturamento"
		Static STR0033 := "Secao Totalizadora das Devolucoes"
		Static STR0034 := "Secao Totalizadora Fat - Dev"
		Static STR0035 := "Total do Cliente"
	#endif
#endif

#ifndef SPANISH
#ifndef ENGLISH
	STATIC uInit := __InitFun()

	Static Function __InitFun()
	uInit := Nil
	If Type('cPaisLoc') == 'C'

		If cPaisLoc == "ANG"
			STR0001 := "Factura��o Por Cliente"
			STR0002 := "Este relat�rio emite a rela��o de factura��o. poder� ser"
			STR0003 := "Emitido por ordem de cliente ou por valor (ranking).     "
			STR0004 := "Se no tes estiver cria duplicata (n), n�o ser� computado."
			STR0005 := "C�digo de barras"
			STR0006 := "Administra��o"
			STR0007 := "Factura��o por cliente  (c�digo ) - "
			STR0008 := "Factura��o por cliente  (ranking) - "
			STR0009 := "Factura��o por cliente  (Distrito) - "
			STR0010 := "C�digo/loja               Raz�o Social                                   Valor             Valor Da                Valor Ranking"
			STR0011 := "                                                                         s/impostos        mercadoria              total        "
			STR0012 := "A Seleccionar Registos..."
			STR0013 := "Cancelado Pelo Operador"
			STR0014 := "Total do distrito de "
			STR0015 := "Distrito: "
			STR0016 := "T o t a l --->"
			STR0017 := "Factura��o Por Cliente"
			STR0018 := "Este relat�rio emite a rela��o de factura��o. poder� ser"
			STR0019 := "Emitido por ordem de cliente ou por valor (ranking).     "
			STR0020 := "Se no tes estiver cria duplicata (n), n�o ser� computado."
			STR0022 := "Valor Da Mercadoria"
			STR0025 := "T o t a l --->"
			STR0026 := "(c�digo)"
			STR0027 := "(classificass�o)"
			STR0028 := "(Distrito)"
			STR0030 := "Total do distrito de "
			STR0032 := "Sec��o Totalizadora Do Factura��o"
			STR0033 := "Sec��o Totalizadora Das Devolu��es"
			STR0034 := "Sec��o Totalizadora Fact. � Dev."
			STR0035 := "Total Do Cliente"
		ElseIf cPaisLoc == "PTG"
			STR0001 := "Factura��o Por Cliente"
			STR0002 := "Este relat�rio emite a rela��o de factura��o. poder� ser"
			STR0003 := "Emitido por ordem de cliente ou por valor (ranking).     "
			STR0004 := "Se no tes estiver cria duplicata (n), n�o ser� computado."
			STR0005 := "C�digo de barras"
			STR0006 := "Administra��o"
			STR0007 := "Factura��o por cliente  (c�digo ) - "
			STR0008 := "Factura��o por cliente  (ranking) - "
			STR0009 := "Factura��o por cliente  (Distrito) - "
			STR0010 := "C�digo/loja               Raz�o Social                                   Valor             Valor Da                Valor Ranking"
			STR0011 := "                                                                         s/impostos        mercadoria              total        "
			STR0012 := "A Seleccionar Registos..."
			STR0013 := "Cancelado Pelo Operador"
			STR0014 := "Total do distrito de "
			STR0015 := "Distrito: "
			STR0016 := "T o t a l --->"
			STR0017 := "Factura��o Por Cliente"
			STR0018 := "Este relat�rio emite a rela��o de factura��o. poder� ser"
			STR0019 := "Emitido por ordem de cliente ou por valor (ranking).     "
			STR0020 := "Se no tes estiver cria duplicata (n), n�o ser� computado."
			STR0022 := "Valor Da Mercadoria"
			STR0025 := "T o t a l --->"
			STR0026 := "(c�digo)"
			STR0027 := "(classificass�o)"
			STR0028 := "(Distrito)"
			STR0030 := "Total do distrito de "
			STR0032 := "Sec��o Totalizadora Do Factura��o"
			STR0033 := "Sec��o Totalizadora Das Devolu��es"
			STR0034 := "Sec��o Totalizadora Fact. � Dev."
			STR0035 := "Total Do Cliente"
		EndIf
		EndIf
	Return Nil
#ENDIF
#ENDIF