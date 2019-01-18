require_relative 'menu'
require_relative 'order'

class Cafe
  attr_reader :order

  def initialize(order = Order)
    @order = order.new
  end

  def show_menu
    order.menu.menu_items
  end

  def add_to_order(food, quantity)
    order.select_item(food,quantity)
  end


end

#   def food_order(food)
#     show_menu
#     select_item(food)
#
#   end
#
# end
#
#
# cafe.ordering_food
#   show_menu
#   select_item     until finished.......
#   cafe.order.order_check
#   cafe.order.dispatch_message
# end of odering_food
