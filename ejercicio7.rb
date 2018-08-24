class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
     @name = name
     @large = large.to_i
     @medium = medium.to_i
     @small = small.to_i
     @xsmall = xsmall.to_i
  end
  def nuevo_catalogo(data)
    file =  File.open('nuevo_catalogo.txt','a')
    puts "#{data.name}, #{data.large}, #{data.medium}, #{data.small}"
    file.puts "#{data.name}, #{data.large}, #{data.medium}, #{data.small}"
    file.close
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  name, large, medium, small, xsmall = prod.split(', ')
  products_list << Product.new(name, large, medium, small, xsmall)
end

products_list.each { |x| x.nuevo_catalogo(x) }
