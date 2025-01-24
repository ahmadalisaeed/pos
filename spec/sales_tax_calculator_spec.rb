require_relative '../sales_tax_calculator'

RSpec.describe SalesTaxCalculator do
  describe '.calculate' do
    it 'returns 0 for untaxable items' do
      expect(SalesTaxCalculator.calculate('book', 12.49)).to eq(0)
      expect(SalesTaxCalculator.calculate('chocolate bar', 0.85)).to eq(0)
    end

    it 'calculates sales tax for taxable items and rounds up to the nearest 0.05' do
      expect(SalesTaxCalculator.calculate('music CD', 14.99)).to eq(1.5)
      expect(SalesTaxCalculator.calculate('perfume', 47.50)).to eq(4.75)
    end
  end

  describe '.taxable' do
    it 'identifies items as taxable if they are not in the untaxable list' do
      expect(SalesTaxCalculator.taxable('music CD')).to eq(true)
      expect(SalesTaxCalculator.taxable('perfume')).to eq(true)
    end

    it 'does not tax items in the untaxable list' do
      expect(SalesTaxCalculator.taxable('book')).to eq(false)
      expect(SalesTaxCalculator.taxable('chocolates')).to eq(false)
    end
  end
end