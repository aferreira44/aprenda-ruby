puts '-- Lista de Compras --'

file = File.open('shopping-list.txt')

puts file

file.each do |line|
  puts line
end