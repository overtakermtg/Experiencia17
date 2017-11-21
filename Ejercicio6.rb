# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los 
# productos que ofrece una tienda junto con los precios de las tallas L, M, S y XS.

# Polera, 10990, 7990, 4990, 2990
# Jeans, 14990, 10990, 7990, 5990
# Poleron, 12990, 8990, 5990, 3990
# Chaleco, 11990, 8990, 6990, 4990
# Parka, 19990, 14990,  11990, 9990

# El siguiente código define la clase Product y además realiza la lectura del archivo.

class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

	def promedio
		(@large + @medium + @small + @xsmall) / 4
	end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')

  products_list << Product.new(*ls)
end

print products_list[1].promedio


# Se pide:
# Optimizar el código implementando el operador 
# splat al momento de instanciar los productos
# Generar un método que permita calcular el promedio de precio por producto.




