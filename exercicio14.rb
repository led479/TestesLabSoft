user_name = ARGV.first
prompt = '> '

puts "Hi #{user_name}.", "I'd like to ask you a few questions.", "Do you like me #{user_name}?"
print prompt
likes = $stdin.gets.chomp

puts likes