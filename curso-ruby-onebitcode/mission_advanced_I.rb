teste = lambda { |name| puts "#{name.capitalize}" }

def capitalize_name fn
  fn.call('André')
  fn.call('João')
end

capitalize_name(teste)
