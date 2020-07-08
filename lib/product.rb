class Product

attr_reader :product, :unit_price, :quantity, :name

  def initialize(product, name, unit_price, quantity)
    @product = product
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
  end

  def category
    @product
  end

  def total_price
    @unit_price * @quantity
  end

end
