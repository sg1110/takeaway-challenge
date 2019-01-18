require_relative 'menu'

class Order
  attr_reader :menu, :prices, :food_quant, :food_items

  def initialize
    @menu = Menu.new
    @prices = []
    @food_items = []
    @food_quant = []
    @total = 0
  end

  def add_item(food, quantity)
     quantity.times { @prices << menu.menu_items[food] }
     "You have added #{quantity} #{food} items to your order"
     @food_items << food
     @food_quant << quantity
   end


  def order_summary
    l = food_items.length

    while l >= 0 do
      print  "#{food_quant[l]}x #{food_items[l]}, "
      l-=1
    end

  end


end


# require './lib/cafe.rb'
# cafe=Cafe.new
# cafe.add("Coke",3)
# cafe.add("Tea",2)
