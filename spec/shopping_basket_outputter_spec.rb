require_relative '../shopping_basket_outputter'

RSpec.describe ShoppingBasketOutputter do
  describe '.output' do
    it 'prints the shopping basket details correctly' do

      basket = ShoppingBasket.new
      basket.add_item('imported bottle of perfume', 1, 27.99)
      basket.add_item('bottle of perfume', 1, 18.99)
      basket.add_item('packet of headache pills', 1, 9.75)
      basket.add_item('imported boxes of chocolates', 3, 11.25)

      expected_output = <<~OUTPUT
        1 imported bottle of perfume: 32.19
        1 bottle of perfume: 20.89
        1 packet of headache pills: 9.75
        3 imported boxes of chocolates: 35.55
        Sales Taxes: 7.90
        Total: 98.38
      OUTPUT

      expect { ShoppingBasketOutputter.output(basket) }.to output(expected_output).to_stdout
    end
  end
end
