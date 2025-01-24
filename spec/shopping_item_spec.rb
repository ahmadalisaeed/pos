require_relative '../shopping_item'

RSpec.describe ShoppingItem do
  describe 'attributes' do
    it 'has a name, quantity, and unit price' do
      item = ShoppingItem.new('book', 3, 12.49)

      expect(item.name).to eq('book')
      expect(item.quantity).to eq(3)
      expect(item.unit_price).to eq(12.49)
    end
  end

  describe '#total_tax' do
    it 'calculates the total tax for the item' do
      item = ShoppingItem.new('imported perfume', 2, 27.99)
      expect(item.total_tax).to eq(8.40) 
    end
  end

  describe '#total_price' do
    it 'calculates the total price before tax' do
      item = ShoppingItem.new('book', 3, 12.49)
      expect(item.total_price).to eq(37.47) 
    end
  end

  describe '#total_price_after_tax' do
    it 'calculates the total price including tax' do
      item = ShoppingItem.new('music CD', 1, 14.99)
      expect(item.total_price_after_tax.round(2)).to eq(16.49)
    end
  end
end
