require './lib/product'


class ShoppingCart

  attr_reader :name, :capacity
  attr_accessor :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    "#{@name}, capacity: #{@capacity}"
  end

  def is_full?
    @capacity <= @products.collect{ |item| item_numbers = item.quantity
    item_numbers}.inject(:+)
  end

end


# cart = ShoppingCart.new("King Soopers", "30items")
# product1 = Product.new(:paper, 'toilet paper', 3.70, '20')
# product2 = Product.new(:meat, 'chicken', 4.50, '10')
# cart.add_product(product1)
# cart.add_product(product2)
# p cart.is_full?
