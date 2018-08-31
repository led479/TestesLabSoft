class Testes_array
  def initialize (*items)
    @lista = items
  end

  def imprime_lista
    @lista.each do |item|
      puts item
    end
  end

end

array = Testes_array.new ([1, 2, 3])
array.imprime_lista