require 'cpf_cnpj'

#puts "Informe o seu CPF:"

cpf = CPF.new(gets.chomp)

puts "O CPF #{cpf.formatted} é valido? #{cpf.valid?}" 


