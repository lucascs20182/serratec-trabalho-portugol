/*
 * 9. Elabore um programa que calcule uma equação do 2° Grau modelo ax2+bx+c. 
 * Solicite a entrada das variáveis a, b, c e calcule as raízes. Apresente 
 * no final do cálculo a equação composta pelas variáveis lidas e o resultado. 
 * Ex. Entrada a=1, b=-5, c=6. Saída 1x2 - 5x – 6 =0 -> X1=3 X2=2
 */

programa
{
	inclua biblioteca Matematica --> mat

	funcao inicio()
	{
		inteiro a, b, c
		
		escreva("\tCalculadora de Equação do 2º grau\n\n"
			+ "Forma geral: Ax² + Bx + C = 0\n")
		
		escreva("Entre com o valor de A: ")
		leia(a)
		escreva("Entre com o valor de B: ")
		leia(b)
		escreva("Entre com o valor de C: ")
		leia(c)

		escreva("\n" + resolve_equacao_de_segundo_grau(a, b, c))
	}

	funcao cadeia resolve_equacao_de_segundo_grau(inteiro a, inteiro b, inteiro c)
	{
		inteiro delta = b * b - 4 * a * c
		inteiro x1 = 0
		inteiro x2 = 0

		se(delta < 0)
		{
			retorne "Não é possível extrair raiz quadrada de um número negativo."
		}

		x1 = (-b + mat.raiz(delta, 2)) / 2 * a

		se(delta == 0)
		{
			x2 = x1

			retorne a + "x²" + " - (" + b + "x)" + " - (" + c + ") = " + 0
				+ " -> x1=" + x1 + " x2=" + x2
		}

		x2 = (-b - mat.raiz(delta, 2)) / 2 * a

		retorne a + "x²" + " - (" + b + "x)" + " - (" + c + ") = " + 0
				+ " -> x1=" + x1 + " x2=" + x2
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */