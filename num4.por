/*
 * 4. Faça um programa que mostre um menu contendo 2 opções: 
 * 1. Fibonacci 2. Fatorial. Ao escolher o numero 1 solicite  
 * que o usuário escolha a quantidade de números da série de 
 * Fibonacci ele quer imprimir e execute a função recursivamente. 
 * Ao escolher a opção 2 solicite ao usuário que escolha o número 
 * que deseja para o cálculo do Fatorial e execute a função recursivamente.
 */

programa
{
	funcao inicio()
	{
		inteiro opcao, qtdNumerosFibonacci, numero
		
		escreva("Menu\n1.Fibonacci\n2.Fatorial\nOpção: ")
		leia(opcao)

		se(opcao == 1)
		{
			escreva("\nQuantos termos da sequência de fibonacci você quer imprimir: "
				+ "\nResposta: ")
			leia(qtdNumerosFibonacci)

			escreva("\nOs " + qtdNumerosFibonacci + " primeiros números"
				+ " da sequência de fibonacci são: \n")

			// segundo a definição formal matemática
			// o primeiro e o segundo número da sequência são iguais a 1
			escreva(1 + " ")

			// remove 1 da quantidade de termos a serem imprimidos
			// para corrigir o 1 printado acima
			qtdNumerosFibonacci -= 1

			// imprime os próximos termos da sequência
			para(inteiro i = 1; i <= qtdNumerosFibonacci; i++)
			{
				escreva(calculeFibonacci(i) + " ")
			}
		}
		senao se(opcao == 2)
		{
			escreva("\nDigite o número que você deseja calcular o seu fatorial. "
				+ "\nResposta: ")
			leia(numero)

			escreva("\nO valor fatorial de " + numero + " é: " + calculeFatorial(numero))
		}
		senao
		{
			escreva("Opção inválida.\n")
		}
	}

	funcao inteiro calculeFibonacci(inteiro qtdNumerosFibonacci)
	{
		se(qtdNumerosFibonacci == 1 ou qtdNumerosFibonacci == 0)
		{
			retorne 1
		}
		senao
		{
			retorne calculeFibonacci(qtdNumerosFibonacci - 1)
				+ calculeFibonacci(qtdNumerosFibonacci - 2)
		}
	}

	funcao inteiro calculeFatorial(inteiro numero)
	{
		inteiro resultado = 1

		se(numero > 1) {
			resultado = numero * calculeFatorial(numero - 1)
			
			retorne resultado
		}
		senao {
			resultado = 1
			
			retorne resultado
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1997; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */