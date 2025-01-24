require './sales_tax_calculator'
require './import_duty_calculator'

class ShoppingItem
  attr_reader :name, :quantity, :unit_price

  def initialize(name, quantity, unit_price)
    @name = name
    @quantity = quantity
    @unit_price = unit_price
  end

  def total_tax
    sales_tax = SalesTaxCalculator.calculate(@name, @unit_price)
    import_duty = ImportDutyCalculator.calculate(@name, @unit_price)
    (sales_tax + import_duty) * @quantity
  end

  def total_price
    @quantity * @unit_price
  end

  def total_price_after_tax
    total_price + total_tax
  end
end