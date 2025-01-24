module ShoppingBasketOutputter
  def self.output(shopping_basket)
    shopping_basket.items.each do |item|
      puts "#{item.quantity} #{item.name}: #{sprintf("%.2f", item.total_price_after_tax)}"
    end

    puts "Sales Taxes: #{sprintf("%.2f", shopping_basket.sales_tax)}"
    puts "Total: #{sprintf("%.2f", shopping_basket.total)}"
  end
end