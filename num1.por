/*
 * 1. Leia dois valores e efetue a divisão do primeiro pelo segundo. O segundo 
 * valor não pode ser ZERO ou negativo, caso isso ocorra você deve informar 
 * ao usuário que o segundo número deve ser maior do que ZERO e solicitar um 
 * novo valor. Deverá imprimir o resultado. Ao final deve perguntar se deseja 
 * calcular outra divisão e caso sua resposta seja positiva limpe a tela
 * e solicite novos valores.
 */

programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		real valor1, valor2
		cadeia continuar = "S"

		faca
		{
			limpa()
			
			escreva("Digite o 1º valor: ")
			leia(valor1)
			escreva("Digite o 2º valor: ")
			leia(valor2)
	
			enquanto(valor2 <= 0)
			{
				escreva("O segundo valor deve ser maior do que zero. Tente novamente.\n")
				escreva("Digite o 2º valor: ")
				leia(valor2)
			}
			
			escreva("O resultado de " + valor1 + " / " + valor2 + " é: "
				+ divida(valor1, valor2))
			
			escreva("\n\nDeseja calcular outra divisão? (S/N): ")
			leia(continuar)

			continuar = txt.caixa_alta(continuar)
		} enquanto(continuar == "S")
	}

	funcao real divida(real valor1, real valor2)
	{
		retorne mat.arredondar(valor1 / valor2, 2)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */