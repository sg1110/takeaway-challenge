require_relative 'menu'
require_relative 'order'

class Takeaway
  attr_reader :order

  def initialize
    @order = Order.new
  end

  def show_menu
    order.menu.menu_items
  end

  def add(food, quantity)
    order.add_item(food,quantity)
  end

  def summary
    order.order_summary
  end

  def total
    order.to_pay
  end

  def checkout(guess)
   if guess == total
  end

end
end
