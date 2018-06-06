programa
{
	
	inclua biblioteca Graficos
	inclua biblioteca Teclado
	inclua biblioteca Util
	inteiro background
	inteiro carinha
	inteiro quadro = 0
	logico esquerda = falso
	logico direita = falso
	
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(800, 600)
		background = Graficos.carregar_imagem("background.jpg")
		carinha = Graficos.carregar_imagem("carinha.png")
		
		inteiro x = 0
		inteiro anima = 0
		inteiro xi = 0
		inteiro yi = 0
		inteiro bgx =0
		enquanto (nao Teclado.tecla_pressionada(Teclado.TECLA_ESC)) {
			esquerda = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ESQUERDA)
			direita = Teclado.tecla_pressionada(Teclado.TECLA_SETA_DIREITA)
			
			inteiro y = 0
			inteiro largura = 200
			inteiro altura = 300
			Graficos.desenhar_imagem(bgx, 0, background)
			//Graficos.definir_cor(Graficos.COR_BRANCO)			
			se(Teclado.alguma_tecla_pressionada()){
				se(xi>740){xi=0}
				xi = quadro*182
			}
			Graficos.desenhar_porcao_imagem(x, 600-255, xi, yi, 182, 255, carinha)
			Graficos.renderizar()
			se(direita){
				se(x<800/2){x+=10}
				bgx--
				
			}
			senao{xi=728}
			se(esquerda){
				x-=10
				bgx++
			}
			senao{xi=728}
			se(anima%3==0){
				quadro++
			}
			se(quadro>4){
				quadro=0
			}
			anima++
			Util.aguarde(1000/30)
		}
	}
	
}
