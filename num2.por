/*
 * 2. Programar uma calculadora com as operações: soma, subtração, multiplicação 
 * e divisão. Deverá ter um menu com as opções de operação. Após a escolha da 
 * operação deverá permitir a inserção de dois valores e executar a conta. 
 * Deverá apresentar o resultado ao usuário e perguntar se ele deseja fazer 
 * novo cálculo ou se deseja encerrar o programa. Deverá permitir voltar ao 
 * menu caso a escolha seja fazer novo cálculo ou sair caso a escolha seja 
 * encerrar o programa.
 */

programa
{
	funcao inicio()
	{
		real valor1, valor2
		inteiro continuar, opcao

		faca
		{
			limpa()
			
			escreva("Menu\n1.Soma\n2.Subtração\n3.Divisão\n4.Multiplicação\n"
				+ "\nDigite o número correspondente à operação: ")
			leia(opcao)

			enquanto(opcao <= 0 ou opcao > 4)
			{
				escreva("\nOpção inválida. Tente novamente:\n")
				
				escreva("1.Soma\n2.Subtração\n3.Divisão\n4.Multiplicação\n"
				+ "Opção: ")
				leia(opcao)
			}
				
			escreva("Digite o 1º valor: ")
			leia(valor1)
			
			escreva("Digite o 2º valor: ")
			leia(valor2)
	
			enquanto(opcao == 3 e valor2 == 0)
			{
				escreva("\nO segundo valor deve ser diferente de zero. Tente novamente.\n")
				escreva("Digite o 2º valor: ")
				leia(valor2)

				// separar alerta de divisão por zero no console
				escreva("\n")
			}
			
			escreva(calcule(opcao, valor1, valor2))
			
			escreva("\n\nDeseja fazer um novo cálculo?\n1.Sim\n"
				+ "2.Não, encerre o programa.\nDigite 1 para SIM ou 2 para NÃO: ")
			leia(continuar)

			enquanto(continuar <= 0 ou continuar > 2)
			{
				escreva("\nOpção inválida. Tente novamente:\n")
				
				escreva("Deseja fazer um novo cálculo?\n1.Sim\n"
				+ "2.Não, encerre o programa.\nDigite 1 para SIM ou 2 para NÃO: ")
				leia(continuar)
			}

			// separar menu no console
			escreva("\n")
		} enquanto(continuar == 1)
	}

	funcao cadeia calcule(inteiro opcao, real valor1, real valor2)
	{
		real resultado = 0.0
		
		se(opcao == 1)
		{
			resultado = valor1 + valor2
			
			retorne "O resultado de " + valor1 + " + " + valor2 + " é: "
				+ resultado
		}
		senao se(opcao == 2)
		{
			resultado = valor1 - valor2
			
			retorne "O resultado de " + valor1 + " - " + valor2 + " é: "
				+ resultado
		}
		senao se(opcao == 3)
		{
			resultado = valor1 / valor2
			
			retorne "O resultado de " + valor1 + " / " + valor2 + " é: "
				+ resultado
		}
		senao 
		{
			resultado = valor1 * valor2
			
			retorne "O resultado de " + valor1 + " * " + valor2 + " é: "
				+ resultado
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1467; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */