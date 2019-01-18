require_relative 'menu'

class Order

  attr_reader :food_on_order_price, :menu

  def initialize
    @food_on_order_price = []
    @menu = Menu.new
  end

  def select_item(food, quantity)
    quantity.times { @food_on_order_price << @menu.menu_items[food] }
    "You have added #{quantity} #{food} items to your oder"
  end



  # def check_order
  # end

end
