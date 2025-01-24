module ImportDutyCalculator
  def self.calculate name, price

    if taxable name
      duty = (price*5.0)/100.0 
      return ((duty/0.05).ceil * 0.05).round(2)
    end

    return 0

  end

  def self.taxable name
    name.downcase.split(' ').include? 'imported'
  end
end