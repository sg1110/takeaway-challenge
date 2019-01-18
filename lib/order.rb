require_relative 'menu'

class Order
  attr_reader :menu, :prices, :food_quant, :food_items

  def initialize
    @menu = Menu.new
    @prices = []
    @food_items = []
    @food_quant = []
  end

  def add_item(food, quantity)
     quantity.times { @prices << menu.menu_items[food] }
     "You have added #{quantity} #{food} items to your order"
     @food_items << food
     @food_quant << quantity
   end
  #
  # def correct_price?(price_guess)
  #   price_guess == total
  # end
  #
  # def total
  #   order_sum.each {|price| @total += price}
  #   return total
  # end
  #
  # def order_summary
  # end

end


# require './lib/cafe.rb'
# cafe=Cafe.new
# cafe.add_to_order("Coke",3)
