programa
{
	//Importa a bibloteca para gerar um arquivo
	
inclua biblioteca Arquivos --> a
	//vetor para gerar a fila
	cadeia fila[201]
	//variavel para armazenar o arquivo
	inteiro num = a.abrir_arquivo("C:/Users/ht.sis/Downloads/ordenado.txt", a.MODO_LEITURA)
	//função de busca
	funcao buscaLinear(){
	//variavel com o valor desejado a ser encotrado
		cadeia s = "200"
	//variavel para indicar a posição
		inteiro pos = 1
	//percorrer a fila e verificar se existe o número no vetor
		enquanto(pos < 201 e fila[pos] != s){
			pos++
		}
		se(fila[pos] == s){
			escreva("Número encontrado na posição: ", pos)
		}
		senao{
			escreva("Número não encontrado...")
		}
	}
	//função principal
	funcao inicio(){

		inteiro i
	//pecorrer a fila para ler as linhas
		para(i = 1;i < 201;i++){
			fila[i] = a.ler_linha(num)
		}
	//chama função
		buscaLinear()
	//fecha o arquivo 
		a.fechar_arquivo(num)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 899; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */