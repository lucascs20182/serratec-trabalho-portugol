/*
 * 9. Elabore um programa que calcule uma equação do 2° Grau modelo ax2+bx+c. 
 * Solicite a entrada das variáveis a, b, c e calcule as raízes. Apresente 
 * no final do cálculo a equação composta pelas variáveis lidas e o resultado. 
 * Ex. Entrada a=1, b=-5, c=6. Saída 1x2 - 5x – 6 =0 -> X1=3 X2=2
 */

programa
{
	inclua biblioteca Matematica --> mat

	funcao inicio()
	{
		real a, b, c
		
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

	funcao cadeia resolve_equacao_de_segundo_grau(real a, real b, real c)
	{
		real delta = b * b - 4.0 * a * c
		real x1 = 0.0
		real x2 = 0.0
		cadeia resultado = ""

		// ajusta os sinais da equação
		se (b < 0 e c < 0)
		{
			resultado += a + "x²" + b + "x" + c + " = 0"
		}
		senao se (b > 0 e c < 0)
		{
			resultado += a + "x² + " + b + "x" + c + " = 0"
		}
		senao se (b < 0 e c > 0)
		{
			resultado += a + "x²" + b + "x + " + c + " = 0"
		}
		senao
		{
			resultado += a + "x² + " + b + "x + " + c + " = 0"
		}

		se(delta < 0)
		{
			retorne "Não possui raiz real."
		}

		x1 = (-b + mat.raiz(delta, 2.0)) / 2 * a

		se(delta == 0)
		{
			x2 = x1

			retorne resultado + " -> x1=" + x1 + " x2=" + x2
		}

		x2 = (-b - mat.raiz(delta, 2.0)) / 2 * a

		retorne resultado + " -> x1=" + x1 + " x2=" + x2
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */