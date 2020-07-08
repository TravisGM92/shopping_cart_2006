require './lib/product'


class ShoppingCart

  attr_reader :name, :capacity, :cat
  attr_accessor :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
    @cat = cat
  end

  def add_product(product)
    @products << product
  end

  def details
    {name: self.name,
    capacity: self.capacity}
  end

  def is_full?
    @capacity <= total_number_of_products
  end

  def products_by_category(category)
    @products.find_all{ |item| item.product == category}
  end

  def total_number_of_products
    @products.collect{ |item| item_numbers = item.quantity
    item_numbers}.inject(:+)

  end

  def percentage_occupied
    ((total_number_of_products.to_f / @capacity.to_f) * 100).round(2)
  end

  def sorted_products_by_category
    @products.sort_by{ |product| product.category}
  end

  def sorted_products_by_quantity
    @products.sort_by{ |product| product.quantity}
  end

  def product_hash
    Hash.new
  end

  def product_breakdown
    categories = @products.collect{ |item| item.category}.uniq
    x = 0
    my_hash = {}
    while x != categories.length
      my_hash[categories[x]] = nil
      x +=1
    end

    y = 0
    while y != categories.length
      my_hash[categories[y]] = @products.select{ |item| item.category == my_hash.keys[y]}
      y += 1
    end
    p my_hash
  end

end

# 
# cart = ShoppingCart.new("King Soopers", "30items")
# product1 = Product.new(:paper, 'toilet paper', 3.70, '20')
# product2 = Product.new(:meat, 'chicken', 4.50, '10')
# product3 = Product.new(:meat, 'fish', 7.50, '2')
# cart.add_product(product1)
# cart.add_product(product2)
# cart.add_product(product3)
#
# cart.product_breakdown
