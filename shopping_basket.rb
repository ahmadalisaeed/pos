require './shopping_item'

class ShoppingBasket
  attr_reader :items, :sales_tax, :total

  def initialize
    @items = []
    @sales_tax = 0
    @total = 0
  end

  def add_item(item_name, quantity, unit_price)
    item = ShoppingItem.new(item_name, quantity, unit_price)
    @items << item
    @sales_tax += item.total_tax
    @total += item.total_price_after_tax
  end
end