require_relative '../input_parser'

RSpec.describe InputParser do
  describe '.parse' do
    it 'parses the input string into unit price, quantity, and item name' do
      result = InputParser.parse('1 chocolate bar at 0.85')
      expect(result).to eq({
        unit_price: 0.85,
        quantity: 1,
        item_name: 'chocolate bar'
      })
    end

    it 'handles input with multi-word item names' do
      result = InputParser.parse('3 imported boxes of chocolates at 11.25')
      expect(result).to eq({
        unit_price: 11.25,
        quantity: 3,
        item_name: 'imported boxes of chocolates'
      })
    end
  end
end