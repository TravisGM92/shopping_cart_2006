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

  def test_it_has_a_quantity
    skip
    product = Product.new(:paper, 'toilet paper', 3.70, '10')
    assert_equal 10, product.quantity
  end

  def test_it_can_get_total_price
    skip
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    assert_equal 37.0, product1.total_price
    assert_equal 9.0, product2.total_price
  end

  def can_it_show_hoard_status
    skip
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')


    assert_equal false, product2.is_hoarded?
  end

  def can_it_can_be_hoarded
    skip
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product2.hoard

    assert_equal true, product2.is_hoarded?
  end

end
