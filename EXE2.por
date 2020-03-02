programa
{
	
	funcao inicio()
	{

		real altura,peso,IMC
		cadeia avaliacao = ""

		escreva("Diga sua altura(em metros): ")
		leia(altura)
		escreva("Diga seu peso(em Kg): ")
		leia(peso)

		IMC = peso/(altura * altura)

		se (IMC < 15){
			avaliacao = "Extremamente abaixo do peso"
		}
		se (IMC >= 15 e IMC < 16){
			avaliacao = "Gravemente abaixo do peso"
		}
		se (IMC >= 16 e IMC < 18.5){
			avaliacao = "Abaixo do peso ideal"
		}
		se (IMC >= 18.5 e IMC < 25){
			avaliacao = "Faixa de peso ideal"
		}
		se (IMC >= 25 e IMC < 30){
			avaliacao = "Em sobrepeso"
		}
		se (IMC >= 30 e IMC < 35){
			avaliacao = "Obesidade em Grau I"
		}
		se (IMC >= 35 e IMC < 40){
			avaliacao = "Obesidade em Grau II (grave)"
		}
		se (IMC > 40){
			avaliacao = "Obesidade em Grau III (mórbida)"
		}
		
		idealMin = (18.5 * (altura * altura))
		idealMax = (25.0 * (altura * altura))
		
		escreva("\n\tSeu IMC é: " + IMC)
		escreva("\n\tSua avaliação: " + avaliacao)
		escreva("\n\tO peso ideal para você é entre " + idealMin + "Kg e " + idealMax + "Kg\n\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */