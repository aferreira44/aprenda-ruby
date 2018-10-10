class Instrumento
  def writing
    puts 'Escrevendo'
  end
end

class Teclado < Instrumento
end

class Pencil < Instrumento
  def writing
    puts 'Escrevendo à lápis'
  end
end

class Pen < Instrumento
  def writing
    puts 'Escrevendo à caneta'
  end
end

teclado = Teclado.new
teclado.writing

pencil = Pencil.new
pencil.writing

pen = Pen.new
pen.writing
