programa
{
	//adiciona a biblioteca para manejar o arquivo
	inclua biblioteca Arquivos --> a

	//adiciona um vetor
	cadeia fila[201]
	//variavel que armazena os dados do arquivo
	inteiro num_arquivo = a.abrir_arquivo("C:/Users/ht.sis/Downloads/ordenado.txt", a.MODO_LEITURA)
	//variavel q verifica se o número ja foi verificado
	logico visitado[201]
	//funcao de busca
	funcao logico dfs(inteiro vertice, cadeia alvo){
		
		visitado[vertice] = verdadeiro

	//verifica se o número da busca esta no vetor
		se (fila[vertice] == alvo) {
			escreva("Alvo encontrado: ", fila[vertice], " na posição: ", vertice, "\n")
			retorne verdadeiro
		}
	//muda o valor do vertice para que o vetor seja percorrido
		inteiro proximo_vertice = vertice + 1
		se (proximo_vertice <= 200 e nao visitado[proximo_vertice]) {
	//chama a funcao para dentro dela msm
			se (dfs(proximo_vertice, alvo)) {
				retorne verdadeiro
			}
		}
		retorne falso
	}
	//função principal
	funcao inicio()
	{
		inteiro i
	//adiciona os dados do arquivo no vetor
		para (i = 1; i <= 200; i++) {
			fila[i] = a.ler_linha(num_arquivo)
	//define que nenhum valor foi visitado
			visitado[i] = falso
		}
	//define o número a ser buscado
		cadeia alvo_busca = "136"
	//chama a função
		se (dfs(1, alvo_busca)) {
	//a mensagem já esta dentro da função
		}
	//mostra uma mensagem de que o número não foi encontrado
		senao {
			escreva("O número '", alvo_busca, "' não foi encontrado usando busca em profundidade.\n")
		}
	//fecha o arquivo
		a.fechar_arquivo(num_arquivo)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */