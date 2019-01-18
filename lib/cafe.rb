require_relative 'menu'

class Cafe
  attr_reader :menu
  
  def initialize
    @menu=Menu.new
  end

end
