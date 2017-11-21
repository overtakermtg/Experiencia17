# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catálogo que no incluya el último precio 
# correspondiente a cada producto debido a que ya no comercializa productos 
# de talla XS.

# Se pide generar un método que reciba como argumento los datos del 
# archivo catalogo.txt y luego imprima el nuevo catálogo solicitado en un archivo 
# llamado nuevo_catalogo.txt


class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

	def promedio
		(@large + @medium + @small ) / 3
	end
end

products_list = []
data = []

File.open('nuevo_catalogo.txt', 'w') do |file2|
  

		File.open('catalogo.txt', 'r') { |file| data = file.readlines}
		data.each do |prod|
		  ls = prod.split(', ')

		  products_list << Product.new(*ls)
		  file2.puts ls[0] + ", " + ls[1] + ", " + ls[2] + ", " + ls[3]

		end
end



print products_list[1].promedio
