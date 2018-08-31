h = {a:1, b:2, c:3, d:4}

#para acessar valores em hash
puts h[:b]

#para adicionar valores a um hash
h[:e] = 5

#para imprimir um hash
h.each do |k, v|
  puts "Chave: #{k}, Valor: #{v}"
end

#deleta se o valor é menor que 3.5
h.delete_if do |k, v|
  v < 3.5
end
