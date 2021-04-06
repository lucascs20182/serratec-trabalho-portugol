/*
 * 10. Desenvolva um programa que some duas matrizes modelo Amxn + Amxn = Amxn.
 * Solicite que o usuário escolha os números de entrada de ambas as matrizes 
 * e apresente como resultado as duas matrizes de entrada e a matriz resultado, 
 * pode ser uma em baixo da outra. Identifique cada matriz ao apresentar o resultado.
 */

programa
{
	funcao inicio()
	{
		// soma no máximo matrizes A5x5
		const inteiro VALOR_DE_M_MAXIMO = 5
		const inteiro VALOR_DE_N_MAXIMO = 5

		/* 
		 *  em portugol os vetores/matrizes só podem ser criadas
		 *  passando valores literais ou constantes na sua declaração
		 *  por isso m e n não podem ser atribuídos diretamente na matriz */
		inteiro matrizA[VALOR_DE_M_MAXIMO][VALOR_DE_N_MAXIMO]
		inteiro matrizB[VALOR_DE_M_MAXIMO][VALOR_DE_N_MAXIMO]
		inteiro matrizS[VALOR_DE_M_MAXIMO][VALOR_DE_N_MAXIMO]
		
		inteiro m = 0
		inteiro n = 0
		
		escreva("Modelo da matriz: Amxn + Bmxn = Smxn\n")

		faca
		{
			escreva("Digite o valor de m: ")
			leia(m)
			escreva("Digite o valor de n: ")
			leia(n)

			se(m > VALOR_DE_M_MAXIMO) 
			{
				escreva("O valor de m não pode ser maior do que " + VALOR_DE_M_MAXIMO
					+ ". Tente novamente.\n")
			} 
	
			se(n > VALOR_DE_N_MAXIMO)
			{
				escreva("O valor de n não pode ser maior do que " + VALOR_DE_N_MAXIMO
					+ ". Tente novamente.\n")
			}
		} enquanto(m > VALOR_DE_M_MAXIMO ou n > VALOR_DE_N_MAXIMO)
		
		// separa a entrada dos valores de m e n
		// dos valores das linhas e colunas da matriz
		escreva("\n")

		// preenche as linhas e colunas da matriz A
		para(inteiro i = 0; i < m; i++)
		{
			para(inteiro j = 0; j < n; j++)
			{
				escreva("Digite o valor de A", i + 1, j + 1, ": ")
				leia(matrizA[i][j])
			}
		}

		// separa obtenção de dados da matrizA da matrizB
		escreva("\n")

		// preenche as linhas e colunas da matriz A
		para(inteiro i = 0; i < m; i++)
		{
			para(inteiro j = 0; j < n; j++)
			{
				escreva("Digite o valor de B", i + 1, j + 1, ": ")
				leia(matrizB[i][j])
			}
		}

		// soma das matrizes 
		para(inteiro i = 0; i < m; i++)
		{
			para(inteiro j = 0; j < n; j++)
			{
				matrizS[i][j] = matrizA[i][j] + matrizB[i][j]
			}
		}
		
		imprimirMatrizes(matrizA, "A", m, n)
		escreva("\n")

		imprimirMatrizes(matrizB, "B", m, n)
		escreva("\n")

		imprimirMatrizes(matrizS, "S", m, n)
	}

	funcao imprimirMatrizes(inteiro matriz[][], cadeia nomeMatriz, inteiro m, inteiro n)
	{
		escreva(nomeMatriz + " = ")
		para(inteiro i = 0; i < m; i++)
		{
			escreva("[")
			para(inteiro j = 0; j < n; j++)
			{
				se(j == 0)
				{
					escreva(matriz[i][j])
				}
				senao
				{
					escreva("   " + matriz[i][j])
				}
			}
			escreva("]\n    ")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */