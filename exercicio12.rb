print "Digite um numero: "
num = gets.chomp.to_f

maior = num * 100
puts "Um numero maior é #{maior}"

print "Me de outro numero: "
outro = gets.chomp
num = outro.to_f

menor = num / 100
puts "Um numero menor é #{menor}."
