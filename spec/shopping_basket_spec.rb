require_relative '../shopping_basket'

RSpec.describe ShoppingBasket do
  describe 'attributes' do
    it 'initializes with an empty items array, zero sales tax, and zero total' do
      basket = ShoppingBasket.new

      expect(basket.items).to eq([])
      expect(basket.sales_tax).to eq(0)
      expect(basket.total).to eq(0)
    end
  end

  describe '#add_item' do
    it 'adds an item to the basket and updates sales tax and total' do
      basket = ShoppingBasket.new
      basket.add_item('imported chocolates', 2, 10.00)
      basket.add_item('music CD', 1, 14.99)

      expect(basket.items.size).to eq(2)

      
      first_item = basket.items[0]
      expect(first_item.name).to eq('imported chocolates')
      expect(first_item.quantity).to eq(2)
      expect(first_item.unit_price).to eq(10.00)
      expect(first_item.total_tax).to eq(1.0) 
      expect(first_item.total_price_after_tax).to eq(21.0) 

      second_item = basket.items[1]
      expect(second_item.name).to eq('music CD')
      expect(second_item.quantity).to eq(1)
      expect(second_item.unit_price).to eq(14.99)
      expect(second_item.total_tax).to eq(1.5) 
      expect(second_item.total_price_after_tax.round(2)).to eq(16.49) 

      expect(basket.sales_tax).to eq(2.5) 
      expect(basket.total.round(2)).to eq(37.49) 
    end
  end
end
