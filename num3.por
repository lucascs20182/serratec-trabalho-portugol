/*
 * 3. Escreva um programa que leia 10 nomes de alunos e duas notas de avaliações 
 * para cada aluno. Calcule e escreva a média de cada aluno, seguido da informação 
 * se foi aprovado ou reprovado. Considere como média para aprovação 6. 
 * Dica: Utilize quantos vetores precisar. 
 * Ex. Saída: Fulano de tal P1= 8.0, P2=6.0, Media=7.0, aprovado!
 */

programa
{
	const inteiro QTD_ALUNOS = 10
	
	funcao inicio()
	{
		// situação: aprovado ou reprovado
		cadeia nomeSituacao[QTD_ALUNOS][2]

		cadeia saida = ""
		
		real notas[QTD_ALUNOS][3]



		// entrada de dados
		para(inteiro i = 0; i < QTD_ALUNOS; i++)
		{
			escreva("Digite o nome do ", i + 1,"º aluno: ")
			leia(nomeSituacao[i][0])

			para(inteiro j = 0; j < 2; j++)
			{
				escreva("Digite a nota da P", j + 1, " de ", nomeSituacao[i][0], ": ")
				leia(notas[i][j])
			}

			notas[i][2] = (notas[i][0] + notas[i][1]) / 2

			se(notas[i][2] >= 6)
			{
				nomeSituacao[i][1] = "Aprovado"
			}
			senao
			{
				nomeSituacao[i][1] = "Reprovado"
			}

			// pula linha entre um aluno e outro
			escreva("\n")
		}



		// saída de dados
		para(inteiro i = 0; i < QTD_ALUNOS; i++)
		{
			saida = ""
			
			saida += nomeSituacao[i][0] + ", "
			saida += "P1= " + notas[i][0] + ", "
			saida += "P2= " + notas[i][1] + ", "
			saida += "Media=" + notas[i][2] + ", "
			saida += nomeSituacao[i][1] + "!\n"
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */