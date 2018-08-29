require_relative 'treino'

teste = [Teste.new("abc"), Teste.new("sfdgfgs"), Teste.new("tshgerhebgd")]
testNaoArray = Teste.new("abcde")


if testNaoArray.respond_to?("each")
  testNaoArray.each do |t|
    puts t.texto
    puts "Texto possui #{t.contaCaracteres} caracteres"
  end
else
  puts "não é array"
end

