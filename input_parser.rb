module InputParser
  def self.parse input
    fields = input.split(' at ')
    unit_price = fields[-1].to_f
    item_info = fields[0].split(' ')
    quantity = item_info[0].to_i
    item_name = item_info[1..-1].join(' ')
    {
      unit_price: unit_price,
      quantity: quantity,
      item_name: item_name
    }
  end
end