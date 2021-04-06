/*
 * 6. Elabore um programa em que o usuário informa dois números (n1 e n2). 
 * O primeiro número (n1) indica o início do laço de repetição e o segundo 
 * número (n2) o fim do laço de repetição. O programa deverá imprimir a 
 * soma de todos os números pares no intervalo entre n1 e n2.
 */

programa
{
	funcao inicio()
	{
		inteiro n1, n2
		inteiro somaDosNumerosPares = 0
		
		escreva("Digite o 1º número: ")
		leia(n1)
		escreva("Digite o 2º número: ")
		leia(n2)

		// garante que o intervalo comece do menor para o maior
		se(n1 > n2)
		{
			inteiro aux = n2
			n2 = n1
			n1 = aux
		}

		para(inteiro i = n1; i <= n2; i++)
		{
			se(i % 2 == 0)
			{
				somaDosNumerosPares += i
			}
		}

		escreva("\nA soma dos números pares entre ", n1, " e ", n2
			+ " é: ", somaDosNumerosPares)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 805; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */