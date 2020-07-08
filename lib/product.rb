class Product

attr_reader :product, :price, :quantity, :product_name

  def initialize(product, product_name, price, quantity)
    @product = product
    @product_name = product_name
    @price = price
    @quantity = quantity
  end


end
