File.open('shopping-list.txt', 'a') do |line|
  line.puts('')
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end