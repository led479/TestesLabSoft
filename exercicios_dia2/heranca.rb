class Pessoa
  attr_accessor :nome, :cpf

  def initialize nome, cpf
    @cpf = cpf
    @nome = nome
  end

  def exibe_pessoa
    print "Eu sou o #{@nome}, com o cpf #{@cpf}"
  end
end


class Empregado < Pessoa
  attr_accessor :salario

  def initialize nome, cpf, salario
    super(nome, cpf)
    @salario = salario
  end

  def exibe_pessoa
    super
    puts " e meu salário é de R$#{@salario}."

  end
end

empregado = Empregado.new "Jonas", 1212, 10000
empregado.exibe_pessoa