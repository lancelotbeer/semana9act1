
class Dog

  def initialize(datos)
    @datos = datos
  end
def ladrar
puts " #{@datos[:nombre]} esta ladrando!"
end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro2 = Dog.new(propiedades)
perro2.ladrar
