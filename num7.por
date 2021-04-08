/*
 * 7. Elabora um programa que solicita ao usuário a quantidade de 
 * números primos que ele quer que seja impresso. Após imprima na 
 * tela a quantidade de números primos escolhida. Ex. Entrada 4
 * Saída 1 2 3 5
 */

programa
{	
	funcao inicio()
	{
		inteiro qtdNumerosPrimos

		escreva("Digite quantos números primos serão impressos: ")
		leia(qtdNumerosPrimos)

		enquanto(qtdNumerosPrimos <= 0)
		{
			escreva("\nEscolha um número maior do que zero.\n\n")
			escreva("Digite quantos números primos serão impressos: ")
			leia(qtdNumerosPrimos)
		}
		
		inteiro proximoDaSequencia = 1 //verifica números de 1 até qtdNumerosPrimos
		inteiro contador = 0 // conta quantos números primos já foram impressos
		
		enquanto(contador < qtdNumerosPrimos)
		{
			se(verifica_se_numero_e_primo(proximoDaSequencia))
			{
				escreva(proximoDaSequencia + " ")
				contador++
			}

			proximoDaSequencia++
		}
	}

	funcao logico verifica_se_numero_e_primo(inteiro numero)
	{
		para(inteiro i = 2; i <= numero / 2; i++) {
			se(numero % i == 0) {
				retorne falso
			}
		}

		retorne verdadeiro
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */