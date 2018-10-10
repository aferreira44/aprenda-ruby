5.times { puts "Exec the block" }

sum = 0
numbers = [5, 10, 15]
numbers.each {|number| sum += number}
puts sum

foo = {2 => 3, 4 => 5}
foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end

def foo
  # Call the block
  yield
  yield
end

foo { puts "Exec the block" }
foo do
  puts "Exec another block"
  puts 123
end

def foo
  if block_given?
    yield
  else
    puts "Without block"
  end
end

foo
foo { puts "With block" }

def foo(name, &block)
  @name = name
  block.call
end

foo('André') { puts "Hello #{@name}" }

def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = {2 => 2, 3 => 3, 4 => 4 }

foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
end
