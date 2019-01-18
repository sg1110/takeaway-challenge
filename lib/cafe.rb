require_relative 'menu'

class Cafe
  attr_reader :menu

  def initialize
    @menu = Menu.new
    @order = []
  end

  def show_menu
    menu.food
  end

  #
  #
  # def select_item(food)
  #    @menu[food]
  #  end

end
