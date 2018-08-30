class Jogo_da_velha

  #CONSTRUTOR, inicia com um tabuleiro vazio
  def initialize
    @tabuleiro = [[" ", " ", " "],
                 [" ", " ", " "],
                 [" ", " ", " "]]
    @jogador = "x"
  end

  #GET TABULEIRO
  def tabuleiro
    @tabuleiro
  end

  def jogador
    @jogador
  end

  def terminar_jogada x, y
    vitoria = ""
    if checa_vitoria_vertical x, y
      vitoria += "\nJogador #{@jogador} ganhou na vertical!"
    end
    if checa_vitoria_horizontal x, y
      vitoria += "\nJogador #{@jogador} ganhou na horizontal!"
    end
    if checa_vitoria_diagonal
      vitoria += "\nJogador #{@jogador} ganhou na diagonal!"
    end

    if @jogador == "x"
      @jogador = "y"
    else
      @jogador = "x"
    end

    return vitoria
  end

  def resetar_tabuleiro
    @tabuleiro = [[" ", " ", " "],
                  [" ", " ", " "],
                  [" ", " ", " "]]
  end

  #Marca x ou y nas coordenadas x e y
  def marcar x, y
    tabuleiro[x][y] = @jogador
  end


  def imprimir_tabuleiro
    puts "************"
    puts " #{@tabuleiro[0][0]} | #{@tabuleiro[0][1]} | #{@tabuleiro[0][2]} "
    puts "---|---|---"
    puts " #{@tabuleiro[1][0]} | #{@tabuleiro[1][1]} | #{@tabuleiro[1][2]} "
    puts "---|---|---"
    puts " #{@tabuleiro[2][0]} | #{@tabuleiro[2][1]} | #{@tabuleiro[2][2]}"
    puts "\n************\n\n"
  end

  #RECEBE como parametro qual a peça do jogador, e as coordenadas que ele jogou
  def checa_vitoria_vertical x, y
    seguidas = 0

    if x == 0
      if @tabuleiro[1][y] == @jogador
        seguidas += 1
      end
      if @tabuleiro[2][y] == @jogador
        seguidas += 1
      end
    end


    if x == 1
      if @tabuleiro[0][y] == @jogador
        seguidas += 1
      end
      if @tabuleiro[2][y] == @jogador
        seguidas += 1
      end
    end

    if x == 2
      if @tabuleiro[0][y] == @jogador
        seguidas += 1
      end
      if @tabuleiro[1][y] == @jogador
        seguidas += 1
      end
    end

    seguidas == 2
  end

  #RECEBE como parametro qual a peça do jogador, e as coordenadas que ele jogou
  def checa_vitoria_horizontal x, y
    seguidas = 0

    if y == 0
      if @tabuleiro[x][1] == @jogador
        seguidas += 1
      end
      if @tabuleiro[x][2] == @jogador
        seguidas += 1
      end
    end

    if y == 1
      if @tabuleiro[x][0] == @jogador
        seguidas += 1
      end
      if @tabuleiro[x][2] == @jogador
        seguidas += 1
      end
    end

    if y == 2
      if @tabuleiro[x][0] == @jogador
        seguidas += 1
      end
      if @tabuleiro[x][1] == @jogador
        seguidas += 1
      end
    end

    seguidas == 2
  end

  def checa_vitoria_diagonal
    x = 0
    y = 0
    seguidas = 0
    while x < 3
      if @tabuleiro[x][y] == @jogador
        seguidas += 1
      end
      x += 1
      y += 1
    end

    if seguidas == 3
      return true
    end

    seguidas = 0
    x = 0
    y = 2
    while x < 3
      if @tabuleiro[x][y] == @jogador
        seguidas += 1
      end
      x += 1
      y -= 1
    end

    seguidas == 3
  end
end