/*
 * 8. Elabora um programa que peça ao usuário que entre com 10 números. 
 * Após solicite que o usuário escolha se quer que sejam impressos 
 * os números em ordem crescente ou decrescente e conforme a escolha 
 * do usuário e faça a impressão da série.
 */

programa
{
	const inteiro TAMANHO_VETOR = 10
	
	funcao inicio()
	{
		inteiro numeros[TAMANHO_VETOR], opcao

		para(inteiro i = 0; i < TAMANHO_VETOR; i++)
		{
			escreva("Entre com o ", i + 1, "º número: ")
			leia(numeros[i])
		}

		escreva("\nDe que forma você deseja que os números sejam impressos?\n")
		escreva("1.Crescente\n2.Decrescente\nOpção: ")
		leia(opcao)

		// adiciona uma linha em branco acima do resultado
		escreva("\n")

		se(opcao == 1)
		{
			escreva("Números ordenados em ordem crescente: "
				+ ordeneCrescente(numeros))
		}
		senao se(opcao == 2)
		{
			escreva("Números ordenados em ordem decrescente: "
				+ ordeneDecrescente(numeros))
		}
		senao
		{
			escreva("Opção inválida. Tente novamente.")
		}

		// adiciona uma linha em branco ao final do programa
		escreva("\n")
	}



	funcao cadeia ordeneCrescente(inteiro numeros[])
	{
		inteiro auxiliar
		cadeia numerosEmOrdemCrescente = ""
		
		para(inteiro i = 0; i < TAMANHO_VETOR; i++)
		{
		    para(inteiro j = i + 1; j < TAMANHO_VETOR; j++)
		    {
		        se(numeros[i] > numeros[j])
		        {
		            auxiliar = numeros[i]
		            numeros[i] = numeros[j]
		            numeros[j] = auxiliar
		        }
		    }
		}
		
		para (inteiro i = 0; i < TAMANHO_VETOR; i++)
		{
			numerosEmOrdemCrescente += numeros[i] + " "
		}

		retorne numerosEmOrdemCrescente
	}



	funcao cadeia ordeneDecrescente(inteiro numeros[])
	{
		inteiro temp
		cadeia numerosEmOrdemDecrescente = ""
		
		para(inteiro i = 0; i < TAMANHO_VETOR; i++) {
			para(inteiro j = 0; j < i; j++) {
				se(numeros[i] > numeros[j]) {
					temp = numeros[i]
					numeros[i] = numeros[j]
					numeros[j] = temp
				}
			}
		}

		para(inteiro i = 0; i < TAMANHO_VETOR; i++) {
			numerosEmOrdemDecrescente += numeros[i] + " "
		}

		retorne numerosEmOrdemDecrescente
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */