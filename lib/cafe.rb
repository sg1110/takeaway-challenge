require_relative 'menu'
require_relative 'order'

class Cafe
  attr_reader :order

  def initialize
    @order = Order.new
    # @menu = Menu.new
  end

  def show_menu
    order.menu.menu_items
  end

  def add(food, quantity)
    order.add_item(food,quantity)
  end

  def checkout(total)
  end


end

#   def food_order(food)
#     show_menu
#     select_item(food)
#
#   end
#
# end

# require './lib/menu.rb'
# cafe = Cafe.new

# cafe.ordering_food
#   show_menu
#   select_item     until finished.......
#   cafe.order.order_check
#   cafe.order.dispatch_message
# end of odering_food
