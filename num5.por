/*
 * 5. Desenvolva um programa no qual o usuário informa 10 
 * números e programa responde qual é o menor, o maior e 
 * a média dos valores.
 */

programa
{	
	funcao inicio()
	{
		const inteiro QTD_NUMEROS = 10
	
		real numeros[QTD_NUMEROS]
		real menor, maior
		real media = 0.0
	
		para(inteiro i = 0; i < QTD_NUMEROS; i++)
		{
			escreva("Informe o ", i + 1 ,"º número: ")
			leia(numeros[i])
		}

		menor = numeros[0]
		maior = numeros[0]

		para(inteiro i = 0; i < QTD_NUMEROS; i++)
		{
			se(numeros[i] < menor)
			{
				menor = numeros[i]
			}

			se(numeros[i] > maior)
			{
				maior = numeros[i]
			}

			media += numeros[i]
		}

		media /= QTD_NUMEROS

		escreva("\nMenor número: " + menor)
		escreva("\nMaior número: " + maior)
		escreva("\nMédia dos número: " + media)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */