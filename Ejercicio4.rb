# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash 
# con la siguiente estructura:

propiedades = {
				nombre: 'Beethoven', 
				raza: 'San Bernardo', 
				color: 'Café'
				}

# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. 
# Luego generar un método llamado ladrar que, mediante interpolación, 
# imprima "Beethoven está ladrando!"

class Dog
	attr_accessor :nombre, :raza, :color
	def initialize(data)
		@nombre = data[:nombre]
		@raza = data[:raza]
		@color = data[:color]

	end
end

perro = Dog.new(propiedades)
puts "#{perro.nombre} está ladrando!"