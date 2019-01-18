class Menu
  attr_reader :food

  def initialize
    @food = { "Hot Wings" => 5.97,
        "Mozzarella Sticks" => 4.71,
        "Tex-Mex Beef Nachos" => 6.81,
        "Shrimp Poppers" => 5.45,
        "Scrambled Eggs" => 1.00,
        "Vanilla Shake" => 3.50,
        "Nutella Shake" => 99.99,
        "Coffee" => 2.00,
        "Tea" => 1.50,
        "Coke" => 1.00 }
  end
end

# require './lib/menu.rb'
# menu = Menu.new
# menu.show_menu
