class Teste

  attr_accessor :texto

   def initialize(texto)
    @texto = texto
  end

  def contaCaracteres
    return @texto.length
  end

end

teste = Teste.new("testedschggfdh")
puts teste.contaCaracteres
puts teste.texto
