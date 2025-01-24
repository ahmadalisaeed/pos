require './shopping_basket'
require './input_parser'
require './shopping_basket_outputter'

shopping_basket = ShoppingBasket.new
File.open("input.txt", "r") do |file|
  file.each_line do |line|
    item = InputParser.parse(line)
    shopping_basket.add_item(item[:item_name], item[:quantity], item[:unit_price])
  end
end

ShoppingBasketOutputter.output(shopping_basket)
