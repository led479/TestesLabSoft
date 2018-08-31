lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#adiciona ao fim da lista
lista.push 11


#adiciona ao inicio da lista
lista.unshift 0

#remove o ultimo item da lista
lista.pop

lista.push 3

#remove duplicatas da lista
lista.uniq!

#imprime a lista
lista.each do |num|
  puts num
end
