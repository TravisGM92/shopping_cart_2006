class Product

attr_reader :product, :unit_price, :quantity, :name
attr_accessor :hoard
  def initialize(product, name, unit_price, quantity)
    @product = product
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @hoard = false
  end

  def category
    @product
  end

  def total_price
    @unit_price * @quantity
  end

  def hoard
    @hoard = true
  end

  def is_hoarded?
    @hoard
  end

end
