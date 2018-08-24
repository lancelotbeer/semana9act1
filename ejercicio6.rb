class Product
  attr_accessor :name, :large, :medium, :small, :xsmall, :average
  def initialize(name, large, medium, small, xsmall)
     @name = name
     @large = large.to_i
     @medium = medium.to_i
     @small = small.to_i
     @xsmall = xsmall.to_i
     @average = (@large + @medium + @small + @xsmall) / 4
  end

   def average
    @average = (@large + @medium + @small + @xsmall) / 4

   end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  name, large, medium, small, xsmall = prod.split(', ')
  products_list << Product.new(name, large, medium, small, xsmall)
end
products_list.each do |producto|
  puts "el producto #{producto.name} tiene un promedio de precio de #{producto.average} "
end
