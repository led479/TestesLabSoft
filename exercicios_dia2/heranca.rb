class Pessoa
  attr_accessor :nome, :cpf

  def initialize(nome, cpf)
    @cpf = cpf
    @nome = nome
  end

  def exibe_pessoa
    puts "Eu sou o #{@nome}, com o cpf #{@cpf}."
  end
end

