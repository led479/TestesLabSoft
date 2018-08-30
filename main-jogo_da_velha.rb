require_relative 'jogo_da_velha'

jogo = Jogo_da_velha.new
jogo.imprimir_tabuleiro

x = 0
y = 0
vitoria = ""
while vitoria == ""
  puts "Vez do jogador #{jogo.jogador}"
  loop do
    print "Digite a sua posição (0-2) (0-2): "
    x, y = gets.split.map(&:to_i)
    break if x < 3 && y < 3
  end
  jogo.marcar x, y
  jogo.imprimir_tabuleiro
  vitoria = jogo.terminar_jogada x, y
  if vitoria != ""
    puts vitoria
  end
end
