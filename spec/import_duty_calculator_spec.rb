require_relative '../import_duty_calculator'

RSpec.describe ImportDutyCalculator do
  describe '.calculate' do
    it 'returns 0 for non-imported items' do
      expect(ImportDutyCalculator.calculate('chocolate', 12.49)).to eq(0)
    end

    it 'calculates duty for imported items and rounds up to the nearest 0.05' do
      expect(ImportDutyCalculator.calculate('imported perfume', 47.50)).to eq(2.4)
      expect(ImportDutyCalculator.calculate('imported chocolate', 10.00)).to eq(0.5)
    end
  end

  describe '.taxable' do
    it 'identifies imported items as taxable' do
      expect(ImportDutyCalculator.taxable('imported wine')).to eq(true)
    end

    it 'does not tax non-imported items' do
      expect(ImportDutyCalculator.taxable('domestic wine')).to eq(false)
    end
  end
end