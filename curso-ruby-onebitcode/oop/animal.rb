class Animal
  def jump
    puts 'Toing Toing'
  end

  def sleep
    puts 'ZZzzZZZz'
  end
end

class Dog < Animal
  def bark
    puts 'Whoof Whoof'
  end
end

class Cat < Animal
  def meow
    puts 'Meow'
  end
end

dog = Dog.new
dog.jump
dog.bark
dog.sleep

cat = Cat.new
cat.jump
cat.meow
cat.sleep
