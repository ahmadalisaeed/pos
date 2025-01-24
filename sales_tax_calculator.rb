UNTAXABLE_ITEMS = ['book', 'books', 'chocolate', 'chocolates', 'pill', 'pills']

module SalesTaxCalculator
  def self.calculate name, price
    if taxable(name)
      sales_tax = (price*10.0)/100.0 
      return (sales_tax/0.05).ceil * 0.05
    end
    return 0
  end

  def self.taxable name
    !name.downcase.split(' ').any? { |word| UNTAXABLE_ITEMS.include? word }
  end
end