class Notas_alunos
  attr_accessor :notas

  def initialize
    @notas = Hash.new
  end

  def adicionar_aluno nome, nota
    @notas[nome] = nota
  end

  def imprimir_lista
    @notas.each do |nome, nota|
      puts "Aluno #{nome} possui a nota #{nota}"
    end
  end
end

db = Notas_alunos.new
db.adicionar_aluno "Jonas", 10
db.adicionar_aluno "Rolf", 12
db.imprimir_lista
