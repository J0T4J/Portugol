programa
{
	
	funcao inicio()
	{
		
		real salBruto, salLiq, pensao, PAT, plnSaude, descontos
		real INSS, baseCalc, IRRF, aliquota, deducao
		inteiro dependentes
		caracter perg1,perg2, perg3, perg4

		INSS = 0.00
		IRRF = 0.00

		escreva("Entre com o seu salário bruto: ")
		leia(salBruto)
		
		escreva("Possui algum dependente?(S/N) ")
		leia(perg1)
		se (perg1 == 'S' ou perg1 == 's'){
			escreva("Entre com o número de dependentes: ")
			leia(dependentes)
		}
	 	senao{
			dependentes = 0
	 	}
		
		escreva("Possu alguma pensão alimentícia descontada diretamente da fonte?(S/N) ")
		leia(perg2)
		se (perg2 == 'S' ou perg2 == 's'){
			escreva("Entre com o valor da pensão alimentícia(R$): ")
			leia(pensao)
		}
		senao{
			pensao = 0.00
		}
		
		escreva("Qual o valor do seu PAT(Programa de Alimentação do Trabalhador): ")
		leia(PAT)
		
		escreva("Possui algum plano de saúde diretamente descontado?(S/N) ")
		leia(perg3)
		se (perg3 == 'S' ou perg3 == 's'){
			escreva("Entre com o valor do plano de saúde(R$): ")
			leia(plnSaude)
		}
		senao{
			plnSaude = 0.00
		}
		
		escreva("Possui mais algum desconto adiconal?(S/N) ")
		leia(perg4)
		se (perg4 == 'S' ou perg4 == 's'){
			escreva("Entre com o valor do desconto(R$): ")
			leia(descontos)
		}
		senao{
			descontos = 0.00
		}

		se (salBruto <= 1830.29){
			INSS = salBruto * 8/100
		}
		se (salBruto > 1830.29 e salBruto <= 3050.52){
			INSS = salBruto * 9/100
		}
		se (salBruto > 3050.52 e salBruto <= 6101.06){
			INSS = salBruto * 11/100
		}
		se (salBruto > 6101.06){
			INSS = 671.12
		}

		baseCalc = salBruto - INSS - pensao - dependentes * 189.59

		se (baseCalc <= 1903.98){
			aliquota = 0.00
			deducao = 0.00
			IRRF = baseCalc * aliquota - deducao
		}
		se (baseCalc >= 1903.99 e baseCalc <= 2826.65){
			aliquota = 7.5/100
			deducao = 142.80
			IRRF = baseCalc * aliquota - deducao
		}
		se (baseCalc >= 2826.66 e baseCalc <= 3751.05){
			aliquota = 15/100
			deducao = 354.80
			IRRF = baseCalc * aliquota - deducao
		}
		se (baseCalc > 3751.06 e baseCalc <= 4664.68){
			aliquota = 22.5/100
			deducao = 636.13
			IRRF = baseCalc * aliquota - deducao
		}
		se (baseCalc > 4664.68){
			aliquota = 27.5/100
			deducao = 869.36
			IRRF = baseCalc * aliquota - deducao
		}
		
		salLiq = salBruto - ((pensao * dependentes) + plnSaude + PAT + descontos + INSS + IRRF)

		escreva("\n\tSeu salário Liquído: R$ " + salLiq,
			  "\n\tValor pago ao INSS: R$" + INSS,
		       "\n\tValor pago ao IRRF: R$" + IRRF)
		       
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2486; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {baseCalc, 8, 13, 8}-{IRRF, 8, 23, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
