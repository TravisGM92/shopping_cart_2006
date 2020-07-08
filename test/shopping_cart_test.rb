require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test
  #Iteration1
  def test_it_exists

    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    # skip
    cart = ShoppingCart.new("King Soopers", "30items")


    assert_equal "King Soopers", cart.name
  end

  def test_it_has_capacity
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 30, cart.capacity
  end

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_can_show_products
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [], cart.products
  end


  def test_it_can_add_products
    # skip
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)


    assert_equal 2, cart.products.length
  end


  def test_it_can_show_details
    # skip
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    deets = {:name=>"King Soopers", :capacity=>30}

    assert_equal deets, cart.details
  end


  def test_it_can_show_full_or_not
    # skip
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)


    assert_equal false, cart.is_full?
  end

  def test_it_can_show_full_or_not
    # skip
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '20')
    product2 = Product.new(:meat, 'chicken', 4.50, '10')
    cart.add_product(product1)
    cart.add_product(product2)

    assert_equal true, cart.is_full?
  end

  def test_it_can_show_products_by_category
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '20')
    product2 = Product.new(:meat, 'chicken', 4.50, '10')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)


    assert_equal 2, cart.products_by_category(:meat).length
  end

  def test_it_can_show_total_number_of_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '20')
    product2 = Product.new(:meat, 'chicken', 4.50, '10')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)


    assert_equal 32, cart.total_number_of_products
  end

  def test_it_can_show_total_number_of_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '5')
    product2 = Product.new(:meat, 'chicken', 4.50, '3')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)


    assert_equal 33.33, cart.percentage_occupied
  end

  def test_it_can_sort_by_category
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:meat, 'chicken', 4.50, '3')
    product2 = Product.new(:paper, 'toilet paper', 3.70, '5')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    product4 = Product.new(:paper, 'writting paper', 2.50, '4')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)

    assert_equal 4, cart.sorted_products_by_category.length
  end

  def test_it_can_sort_by_quantity
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:meat, 'chicken', 4.50, '3')
    product2 = Product.new(:paper, 'toilet paper', 3.70, '5')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    product4 = Product.new(:paper, 'writting paper', 2.50, '4')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)

    assert_equal 4, cart.sorted_products_by_quantity.length
  end

  def test_it_can_show_product_breakdown
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:meat, 'chicken', 4.50, '3')
    product2 = Product.new(:paper, 'toilet paper', 3.70, '5')
    product3 = Product.new(:meat, 'fish', 7.50, '2')
    product4 = Product.new(:paper, 'writting paper', 2.50, '4')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    cart.add_product(product4)

    assert_equal 4, cart.product_breakdown
  end

end
